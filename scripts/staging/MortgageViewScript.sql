CREATE VIEW [dbo].[Mortgage_view] AS
SELECT a.*, cb.SSN as CBSSN, cb.[Borrower Email] as [CBorrower Email], cb.[Borrower FirstName] as [CBorrower FirstName],
cb.[Borrower LastName] as [CBorrower LastName], cb.[Cell Phone] as [CBCell Phone], cb.City as CBCity,
cb.[Current Street Address] as [CBCurrent Street Address], cb.[Date of Birth] as [CBDate of Birth],
cb.Ethnicity as CBEthnicity, cb.[Home Phone] as [CBHome Phone], cb.[Marital Status] as [CBMarital Status],
cb.Race as CBRace, cb.Sex as CBSex, cb.YearsAtThisAddress as CBYearsAtThisAddress, cb.Zip as CBZip, cb.State as CBState,
b.MonthlyIncome,b.Bonuses,b.Commission,b.OtherIncome,b.[Rent or Own],b.Checking,b.Savings,b.RetirementFund,b.MutualFund,
c.[Property City],c.[Property State],c.[Property Usage],c.[Property Zip],c.Property_ID,c.RealEstateAgentEmail,c.RealEstateAgentName,c.RealEstateAgentPhone,
d.Loan_ID,d.[Purpose of Loan],d.LoanAmount,d.[Purchase Price],d.CreditCardAuthorization,d.[Number of Units],d.Refferal,d.[Co-Borrower SSN]
FROM Borrower_staging a
INNER JOIN Financial_staging b on a.ssn =b.ssn
INNER JOIN Property_staging c on b.ssn=c.ssn
INNER JOIN Loan_staging d on c.ssn=d.ssn
LEFT JOIN CoBorrower_staging cb on cb.ssn = d.ssn
