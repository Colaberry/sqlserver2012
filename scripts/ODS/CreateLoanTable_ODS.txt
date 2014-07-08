CREATE TABLE [dbo].[Loan_ODS](
[Loan_ID] [int] NOT NULL,
[SSN] [int] NOT NULL,
[Property_ID] [int] NOT NULL,
[Purpose of Loan] [varchar](50) NULL,
[LoanAmount] [int] NULL,
[Purchase Price] [int] NULL,
[CreditCardAuthorization] [varchar](50) NULL,
[Number of Units] [int] NULL,
[Refferal] [varchar](50) NULL,
[Co-Borrower SSN] [int] NOT NULL
)