# Broker Feed Data Quality Monitor 🚀
### An Automated End-to-End DataOps Pipeline for Trade Feed Validation

---

## 📌 Project Overview
In operational environments, external data feeds arrive daily from multiple third-party vendors and broker systems. These data streams frequently suffer from structural anomalies, transmission dropouts, and record duplication. Without robust pre-load processing, corrupted data propagates silently into production environments, triggering downstream system failures and analytical inaccuracies.

This repository delivers a production-ready **DataOps pipeline** built to automate data ingestion, execute complex data quality checking validation criteria, persist transaction discrepancies to a relational database layer, and present operational health summaries via an executive business intelligence interface.

---

## 💻 Tech Stack & Architecture
* **Data Engineering & Pipeline Logic:** Python (`Pandas`, `NumPy`)
* **Relational Database Storage Layer:** MySQL (`MySQL Workbench`)
* **Business Intelligence & Presentation:** Power BI Desktop
* **Data Quality Framework:** Custom algorithmic validations for *Completeness*, *Validity*, and *Uniqueness*

---

## 📊 Business Intelligence Interface
By routing validation artifacts directly to an operational dashboard layer, teams can dynamically monitor systemic pipeline anomalies, track vendor-specific performance tiers, and inspect granular defect files at a glance.

![Power BI Dashboard Preview](dashboard/Dashboard_Image.png)

---

## 🔍 Key Findings & Extracted Metrics
Across a simulated environment processing **5,010 trade records** across **5 broker endpoints**, the automated validation engine trapped **164 validation anomalies**:

* **CRITICAL | Missing Price Anomalies (101 Records | 61.6%):** A systemic data completeness breakdown distributed broadly across all ingestion endpoints. Left unmitigated, these null entries would cause database schema constraint rejections during loading.
* **HIGH | Price Outliers & Anomalies (53 Records | 32.3%):** Significant value boundary breaches concentrated specifically within *Summit Clearing* (10 high-price anomalies) and *Apex Securities* (15 negative-price exceptions), highlighting vendor-side field-encoding issues.
* **MEDIUM | Duplicated Records (10 Records | 6.1%):** Exact transaction duplicates isolated entirely to *Apex Securities* and *Beacon Trades* (5 records each), pointing to a transmission gateway double-submission error.

---

## 📂 Project Repository Structure
The repository is systematically decoupled to separate raw source inputs, transformation code blocks, database scripts, and reporting modules:

```text
├── dashboard/                      # Power BI visual reporting assets
│   ├── Dashboard_Image.png         # Live executive dashboard preview snapshot
│   └── DataOps_Feed_Monitor.pbix   # Live Power BI data model asset
├── data_inputs/                    # Inbound vendor staging layer
│   ├── Apex_Securities_trades.csv  # Incoming Broker Data Feed A
│   ├── Beacon_Trades_trades.csv    # Incoming Broker Data Feed B
│   ├── Horizon_Brokers_trades.csv  # Incoming Broker Data Feed C
│   ├── Summit_Clearing_trades.csv  # Incoming Broker Data Feed D
│   └── Vanguard_Feeds_trades.csv   # Incoming Broker Data Feed E
├── data_outputs/                   # Downstream pipeline transformation files
│   ├── broker_error_summary.csv    # Programmatic Outbound Metric Logs
│   ├── broker_issue_matrix.csv     # Structured Matrix of Flag Types
│   └── detailed_error_log.csv      # Granular Error Log and Audit Trail
├── reports/                        # Executive whitepapers and briefs
│   └── Broker_Feed_Quality_Report.pdf # Comprehensive Technical Briefing Document
└── scripts/                        # Automation engineering logic and data layers
    ├── 1_Data_Generation.ipynb     # Automated Synthesis Engine
    ├── 2_Data_Quality_Engine.ipynb  # Algorithmic Evaluation Engine
    ├── 1_database_schema.sql       # Production Schema Definition Scripts
    └── 2_database_dump.sql         # Relational Mock Data Dumps

````
##⚙️ Core Pipeline Execution Flow
Ingestion & Parsing: Source CSV files from various brokers are swept from data_inputs/, structurally unified, and staged via Python.

Quality Validation Checks: Vectorized criteria execute to flag missing fields (Completeness), unexpected negative pricing boundaries (Validity), and transaction ID tracking redundancies (Uniqueness).

Relational Logging: Flagged records are assigned an operational severity profile (CRITICAL, HIGH, MEDIUM) and pushed upstream directly into a clean, indexed MySQL server environment (feed_errors).

BI Syncing: The Power BI layout establishes an automated cross-filter connection across the reporting datasets in data_outputs/ to drive strategic trend analysis.

💡 Operational Recommendations for DataOps Maturity
Pre-Load Quarantine Gates: Implement automated pipeline boundaries that automatically route CRITICAL missing price rows to isolated review holding tables rather than letting them hit target schemas.

Proactive Ingestion Threshold Alerting: Configure active warning triggers when an ingest stream's failure rate crosses a 3% threshold limit for automated manager escalation routing.

Gateway Level Audits: Collaborate with broker partners at Apex Securities and Beacon Trades to debug automated gateway duplicate submission parameters directly at the origination endpoint.

This project is part of Amegha V.S's professional portfolio demonstrating readiness for a Data Analyst role. All data used in this project is fully synthetic and generated for demonstration purposes only.
