# 🎯 CriticalSight - Enterprise Incident Management System

[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.104+-green.svg)](https://fastapi.tiangolo.com)
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive ML + GenAI powered system for automated incident classification, impact analysis, and intelligent response recommendations.

## 🌟 Features

### 🤖 **Machine Learning Classification**
- Automated critical/non-critical incident classification
- Random Forest and Neural Network classifiers
- Continuous learning and model retraining
- Feature engineering from text, temporal, and categorical data
- 90%+ accuracy on production datasets

### 🧠 **GenAI Impact Analysis** 
- Comprehensive impact assessment for critical incidents
- Technical, business, and operational impact analysis
- Intelligent recommendations and escalation guidance
- Multi-provider support (OpenAI, Azure OpenAI, etc.)
- Historical context integration

### 🚀 **Production-Ready Architecture**
- Microservices architecture with FastAPI
- Async/await throughout for high performance
- PostgreSQL with SQLAlchemy ORM
- Redis for caching and task queues
- Docker containerization and orchestration
- Comprehensive monitoring and alerting

### 🔗 **Enterprise Integrations**
- ServiceNow, Jira, PagerDuty integrations
- Slack, Teams, email notifications
- RESTful API with OpenAPI documentation
- Webhook support for real-time updates
- RBAC and API key authentication

## 📁 Project Structure

```
criticalsight/
├── 📚 README.md                           # You are here
├── 🐳 docker-compose.yml                  # Container orchestration
├── 🐳 Dockerfile                          # Container definition
├── ⚙️  requirements.txt                    # Python dependencies
├── 🔧 pyproject.toml                      # Project configuration
├── 📝 .env.example                        # Environment template
├── 
├── criticalsight/                         # 🏗️ Main application package
│   ├── 🎛️ config/                        # Configuration management
│   │   ├── settings.py                   # Pydantic settings
│   │   └── logging.py                    # Logging configuration
│   │
│   ├── 🧬 core/                          # Core domain models
│   │   ├── models.py                     # Pydantic models
│   │   ├── exceptions.py                 # Custom exceptions
│   │   └── constants.py                  # Application constants
│   │
│   ├── 🗄️ database/                      # Database layer
│   │   ├── connection.py                 # Database connection
│   │   ├── migrations/                   # Alembic migrations
│   │   └── repositories/                 # Repository pattern
│   │       ├── base.py                   # Base repository
│   │       └── incident_repository.py    # Incident operations
│   │
│   ├── 🤖 ml/                            # Machine Learning
│   │   ├── feature_engineering.py        # Feature extraction
│   │   ├── classifiers/                  # ML models
│   │   │   ├── base_classifier.py        # Abstract base
│   │   │   ├── random_forest_classifier.py
│   │   │   └── neural_network_classifier.py
│   │   ├── evaluation.py                 # Model evaluation
│   │   └── model_registry.py             # Model versioning
│   │
│   ├── 🧠 genai/                         # Generative AI
│   │   ├── providers/                    # GenAI providers
│   │   │   ├── base_provider.py          # Provider interface
│   │   │   ├── openai_provider.py        # OpenAI integration
│   │   │   └── azure_openai_provider.py  # Azure OpenAI
│   │   ├── analyzers/                    # AI analyzers
│   │   │   ├── impact_analyzer.py        # Impact analysis
│   │   │   └── recommendation_analyzer.py
│   │   └── prompts/                      # Prompt templates
│   │       └── templates.py              # Structured prompts
│   │
│   ├── 🔧 services/                      # Business logic
│   │   ├── incident_service.py           # Main incident processing
│   │   ├── classification_service.py     # ML classification
│   │   ├── analysis_service.py           # GenAI analysis
│   │   └── notification_service.py       # Alert handling
│   │
│   ├── 🌐 api/                           # REST API layer
│   │   ├── app.py                        # FastAPI application
│   │   ├── routes/                       # API routes
│   │   │   ├── incidents.py              # Incident endpoints
│   │   │   ├── models.py                 # Model management
│   │   │   └── health.py                 # Health checks
│   │   ├── middleware/                   # HTTP middleware
│   │   │   ├── auth.py                   # Authentication
│   │   │   ├── rate_limiting.py          # Rate limiting
│   │   │   └── error_handling.py         # Error handling
│   │   └── schemas/                      # Request/Response schemas
│   │       └── incident_schemas.py       # API schemas
│   │
│   ├── 💻 cli/                           # Command line interface
│   │   ├── main.py                       # CLI entry point
│   │   └── commands/                     # CLI commands
│   │       ├── train.py                  # Model training
│   │       ├── process.py                # Incident processing
│   │       └── metrics.py                # System metrics
│   │
│   ├── 🔗 integrations/                  # External integrations
│   │   ├── servicenow/                   # ServiceNow client
│   │   ├── jira/                         # Jira client
│   │   └── slack/                        # Slack notifications
│   │       └── notifier.py               # Slack integration
│   │
│   ├── 🕒 scheduler/                     # Background tasks
│   │   ├── tasks.py                      # Scheduled jobs
│   │   └── cron_jobs.py                  # Cron definitions
│   │
│   └── 🛠️ utils/                         # Utilities
│       ├── helpers.py                    # Helper functions
│       ├── validators.py                 # Data validation
│       └── decorators.py                 # Custom decorators
│
├── 🧪 tests/                             # Test suite
│   ├── unit/                             # Unit tests
│   ├── integration/                      # Integration tests
│   └── e2e/                              # End-to-end tests
│
├── 📊 monitoring/                        # Monitoring configs
│   ├── prometheus.yml                    # Metrics collection
│   └── grafana/                          # Dashboard configs
│
├── 🚀 scripts/                           # Deployment scripts
│   ├── setup.sh                          # Environment setup
│   ├── deploy.sh                         # Deployment script
│   └── create_sample_data.py             # Sample data generator
│
└── 📖 docs/                              # Documentation
    ├── api.md                            # API documentation
    ├── deployment.md                     # Deployment guide
    └── user_guide.md                     # User manual
```

## 🚀 Quick Start

### 1. **Clone and Setup**
```bash
git clone https://github.com/yourcompany/criticalsight.git
cd criticalsight

# Run setup script
chmod +x scripts/setup.sh
./scripts/setup.sh
```

### 2. **Configure Environment**
```bash
# Copy and edit environment file
cp .env.example .env

# Add your API keys
export OPENAI_API_KEY="your-openai-api-key"
export SLACK_WEBHOOK_URL="your-slack-webhook"
```

### 3. **Start with Docker**
```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f
```

### 4. **Access the Application**
- **API Documentation**: http://localhost:5000/docs
- **Grafana Dashboard**: http://localhost:3000 (admin/admin)
- **Prometheus Metrics**: http://localhost:9090

## 📖 API Usage Examples

### **Create and Process Incident**
```python
import httpx

# Create incident
incident_data = {
    "incident_id": "INC-001",
    "title": "Database connection timeout",
    "description": "Users unable to login due
