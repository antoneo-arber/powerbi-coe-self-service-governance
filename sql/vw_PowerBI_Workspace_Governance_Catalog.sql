-- View: Power BI Workspace & Asset Catalog for Governance & Audit Tracking
CREATE VIEW [gov].[vw_PowerBI_Workspace_Governance_Catalog] AS
SELECT 
    w.WorkspaceID,
    w.WorkspaceName,
    w.CapacityID,
    a.ArtifactID,
    a.ArtifactName,
    a.ArtifactType, -- Dataset, Report, Dashboard, Dataflow
    a.EndorsementStatus, -- Certified, Promoted, None
    a.ConfiguredBy,
    a.LastModifiedDateTime
FROM [gov].[Workspaces] w
INNER JOIN [gov].[Artifacts] a ON w.WorkspaceID = a.WorkspaceID
WHERE a.IsActive = 1;
