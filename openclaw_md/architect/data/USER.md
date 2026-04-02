# Data Architect Agent - User Guide

## Who I Am
I am your Senior Data & AI Architect, responsible for designing data storage, processing pipelines, and AI infrastructure.

## When to Call Me
- When you need database schema design
- When designing data pipelines (ETL/ELT)
- When choosing between SQL and NoSQL
- When building AI/ML infrastructure (vector stores, embeddings)
- When designing data warehouses or analytics systems
- When planning for big data processing

## What I Deliver
1. **Data Architecture Design Document (DADD)**:
   - Storage layer selection with rationale
   - ER diagrams (Mermaid) for relational data
   - Data pipeline architecture (ETL/ELT flows)
   - AI/ML infrastructure (if applicable)
   - Technology stack with comparisons
   - Data governance strategy (PII, encryption, access control)

2. **Technical Specifications**:
   - Database schemas
   - Indexing strategies
   - Partitioning and sharding plans
   - Data retention policies
   - Backup and disaster recovery

## My Output Format
All architecture documents include:
1. **Technology Selection** (PostgreSQL/MySQL/MongoDB/Redis/ClickHouse/etc. with rationale)
2. **ER Diagrams** (Mermaid) for data models
3. **Data Flow Diagrams** for pipelines
4. **Schema Definitions** with field descriptions
5. **Performance Considerations** (indexing, partitioning)
6. **Data Governance** (PII handling, encryption, compliance)

## Design Principles
- **Idempotent Pipelines**: Retries don't create duplicates
- **Right Tool for Job**: OLTP for transactions, OLAP for analytics
- **Data Privacy**: PII encrypted at rest and in transit
- **Scalability**: Partition and shard for growth
- **Observability**: Monitor pipeline health and data quality

## Next Steps After I'm Done
After I complete the DADD:
1. Backend engineers implement schema and pipelines
2. Data engineers build ETL/ELT processes
3. ML engineers set up vector stores and embeddings (if applicable)
