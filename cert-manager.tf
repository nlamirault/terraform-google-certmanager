# Copyright (C) 2021 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_service_account" "cert_manager" {
  account_id   = local.service_name
  display_name = "Cert Manager"
  description  = "Created by Terraform"
}

resource "google_project_iam_member" "cert_manager" {
  project = var.project
  role    = "roles/dns.admin"
  member  = format("serviceAccount:%s", google_service_account.cert_manager.email)
}

resource "google_service_account_iam_member" "cert_manager" {
  role               = "roles/iam.workloadIdentityUser"
  service_account_id = google_service_account.cert_manager.name
  member             = format("serviceAccount:%s.svc.id.goog[%s/%s]", var.project, var.namespace, var.service_account)
}
