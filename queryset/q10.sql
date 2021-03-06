SELECT ?taxonid ?name ?rank
WHERE
{
	{
		?taxonid <http://gcm.wdcm.org/ontology/gcmAnnotation/v1/ancestorTaxid> <http://gcm.wdcm.org/data/gcmAnnotation1/taxonomy/1270>.
		?nameId <http://gcm.wdcm.org/ontology/gcmAnnotation/v1/taxid> ?taxonid;
		<http://gcm.wdcm.org/ontology/gcmAnnotation/v1/nameclass> 'scientificName';
		<http://gcm.wdcm.org/ontology/gcmAnnotation/v1/taxname> ?name.
		?taxonid <http://gcm.wdcm.org/ontology/gcmAnnotation/v1/nodeRank> ?rank.
		FILTER (regex(?name,'2665')||regex(?rank,'2665')).
	}
	UNION
	{
		?nameId <http://gcm.wdcm.org/ontology/gcmAnnotation/v1/taxid> <http://gcm.wdcm.org/data/gcmAnnotation1/taxonomy/1270>;
		<http://gcm.wdcm.org/ontology/gcmAnnotation/v1/taxid> ?taxonid;
		<http://gcm.wdcm.org/ontology/gcmAnnotation/v1/nameclass> 'scientificName';
		<http://gcm.wdcm.org/ontology/gcmAnnotation/v1/taxname> ?name.
		<http://gcm.wdcm.org/data/gcmAnnotation1/taxonomy/1270> <http://gcm.wdcm.org/ontology/gcmAnnotation/v1/nodeRank> ?rank.
		FILTER(<http://gcm.wdcm.org/data/gcmAnnotation1/taxonomy/1270> = ?taxonid)
		FILTER (regex(?name,'2665')).
	}
}
