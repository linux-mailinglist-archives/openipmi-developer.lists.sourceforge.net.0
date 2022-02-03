Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 473374A8C4B
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Feb 2022 20:12:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFhWh-00035s-FA; Thu, 03 Feb 2022 19:12:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=00335a9a4d=verdun@hpe.com>) id 1nFfbf-0001uE-Oo
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Feb 2022 17:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ySceMyUBql7zcu2elfMj2MHU5ipwVpoJH0jb5vsHf90=; b=ACPAFPArxD0W3U86jt672jPQw2
 PDcCKChbhDbmoCabQfwcV7eyAohv6KTmxyEj0wyYdNh3toaEISPoeDoj5euJ1iqeD5T7zdO8IM74l
 cOiSwe5N/5wBxHkCEsLqMwZGNxaJoXBqNXHkmTdoGS52r26gelU8Ko6m7wCOUCDFoHeE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ySceMyUBql7zcu2elfMj2MHU5ipwVpoJH0jb5vsHf90=; b=JDTH9buz5//bPcGNToMEU9HmrT
 dPmAHikjALgQrrctma9dVypOOtNOPe6kJepj1ifVC0TI/KuwSypm0oDdkGPickNVau+cXTMVo/k1m
 8EIqhn6sgxbGlWx1zvs8r04eW2isXuZBGBMZjU+7lGo0q6+a5rUH/CaeFVS/uBvmUuLc=;
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFfbZ-00FMoc-Ca
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Feb 2022 17:09:14 +0000
Received: from pps.filterd (m0134422.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 213AcEwE017809;
 Thu, 3 Feb 2022 17:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=pps0720;
 bh=ySceMyUBql7zcu2elfMj2MHU5ipwVpoJH0jb5vsHf90=;
 b=mwnEmzYdn/2LS9VrYo746plkfk8qAW5lHVh0UJ54qAnb9QECKMhIvMkY/hCS82TCHYb4
 5KkA3Ivt5hYcWhzpCcvGhwSU8OtvYcRs9iTQ3UR0qoCMJrC7K8O43Zakwn0yMDyQF2Q5
 OKxxqqf5h1I0xVk9ZrGG9lKW/l70LAywk60+iA/zhnyeMlDRiOOTTB72HmGVOpLDqGaK
 IF9bEeGt+UUje693Oukszeja7rBvdPRMOaOVzdDJaV/YaN/nRaTtriBTkEOwaRpc5a7w
 KN9dQCZEcv3RTRiKDV+JXnYUMSB5piKXlsDYzUpnY75l6KUqk50KueG1W+Fo0FGSVADF oQ== 
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
 by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3e0dfk30mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 03 Feb 2022 17:08:01 +0000
Received: from G4W9121.americas.hpqcorp.net (g4w9121.houston.hp.com
 [16.210.21.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by g9t5008.houston.hpe.com (Postfix) with ESMTPS id A65CC57;
 Thu,  3 Feb 2022 17:07:56 +0000 (UTC)
Received: from G9W8456.americas.hpqcorp.net (2002:10d8:a15f::10d8:a15f) by
 G4W9121.americas.hpqcorp.net (2002:10d2:1510::10d2:1510) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Thu, 3 Feb 2022 17:07:56 +0000
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (15.241.52.12) by
 G9W8456.americas.hpqcorp.net (16.216.161.95) with Microsoft SMTP
 Server (TLS)
 id 15.0.1497.23 via Frontend Transport; Thu, 3 Feb 2022 17:07:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fP1XdSh/DXJqCk1zGC5UBUUclkT/Lh4t2P1MQkwry9GssjZieNEcdWTvG66hyhA9+En4J60JybzVvgeGeDHiB/pH8AWPNlAtF8+qMZkp/fYyozZHgH7YhvzySm1nJdfKduUAs6bc2dl4Gaekraa+jL7iSx1amg9QYw7px0DyyJ/OfNwuNo+pit9aNtLpIOptb+T5clLaMHgg3XfdNPec7QoqBYAD1FEUMrGo3Bu/CAUIwZDEtBGyvu7lo4Domf7KKK0vsFlaFKcSCEGvNU5q2yQY0GUpmzA7F6eqvLFro3EDR3MEoxC07J9uJBJ+B9PKMJg3uLxCBRrc3N6ffmSCRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySceMyUBql7zcu2elfMj2MHU5ipwVpoJH0jb5vsHf90=;
 b=Wcp1eBjL0AGNgXSRiWQ6g9QLntUxb55v6zxRp0bwC1Wkijz/TjGPfCIsocZzzdCVjK8JaKzNOzRbtjDNr4qlL5iwoEn6wQtWTEE5ot58eNsI5N1XuIkBINN07uo4Vvtpk11EbhBx3F4Sfxh06YEiVBdi1JTU5WQWg6kRdYV6uMEbOKXmuXav+eaKEtZLlIfC5LrKE+6NJsEDd2PEp1bTklUfPQisfHMnBibHa+VqOtq6yUb4EoQvdm5p+gmijfHup4FvbpYARyrAXm3ZorN/U4l9yzD20zF+6DIzNBnRG4cj0ec85j0xMTSGpSg5JEzSt3AfqTqhwkjib3db/7y9kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4f::17) by
 PH7PR84MB1584.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:153::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.22; Thu, 3 Feb
 2022 17:07:54 +0000
Received: from DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::b84a:b07:81c9:881f]) by DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::b84a:b07:81c9:881f%4]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 17:07:54 +0000
From: "Verdun, Jean-Marie" <verdun@hpe.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, Rob Herring
 <robh+dt@kernel.org>, "Hawkins, Nick" <nick.hawkins@hpe.com>
Thread-Topic: [PATCH] HPE BMC GXP SUPPORT
Thread-Index: AQHYGFWhalWR7e0Ubkq65+wBTOCNhayB5D6AgAAHYgD//57BgA==
Date: Thu, 3 Feb 2022 17:07:54 +0000
Message-ID: <1FEAAC19-1DD7-40D7-98FD-30C2659E7C0F@hpe.com>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <CAL_Jsq+K2t5WYE056so1iZgZr7CBKvDEjAwnJVTyUFQcK-VFSA@mail.gmail.com>
 <e79133f2-f872-3ed6-4038-526e94e84909@canonical.com>
In-Reply-To: <e79133f2-f872-3ed6-4038-526e94e84909@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 068d2e9c-a01b-46b5-a308-08d9e737b819
x-ms-traffictypediagnostic: PH7PR84MB1584:EE_
x-microsoft-antispam-prvs: <PH7PR84MB15848A610F38C53334362732D6289@PH7PR84MB1584.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GU10OWnPJnDSjVzgZ1Wgv7TvL/MTRdOqs9xWkdzfaHBCWa52F3AQ1mO4SERQzpvUnCGkCwa4mhh6ehODlSEmmoQYafuPsAjFut/ydUzvBj01i/orYYt0yGiiahmPkhRRVhgO5KPK04baNpSN5dQhVVQQwPyIWTAkKy4ZcMB9rct52y6lqd1+a7Tqp5GWCW0FZbU1N5xy8f6c6I8IQUQ8g5FrCrLheEgc/RStPirewvPOU/gykn80ABrB2sNWw0t2XBZZGOtLgnKkb/K5D8Wv69zFog102xtVOOK72btSodimeVza4FbstbKZV6ps8uzCDJ0evofJyZ3CpCYToSwfUcMEfMdK0iIR7boBjF4+SQF6H+WYnWBtRnmjKgGqyfT+C4Mrd4c9dg6r7GEhKHqkCN7x5yBTLVPgrkTt1yLwU3wBVUEpIud3NJyPifRzsb8leRuofXfaYz2rfZcUtLmgHNzZe+pe17kC1joARX6sTyJ07SzI/f/zFzmwSSlGOUdEvx/DBBYyy2VdAo/uGBPY0mm/5g9irYhrxuNIq81xVyUuwDJWvLd8ifTHGt0rWMhf8BPqWNq8vlA5jTb6v7rkVpraUKhxkKrHvffF4p9DUiVA774D49q1n8Jsd4nA6d0luk6+TclVBsN4NsNq6JqxvQwCwenTUj4+foX0LxZKVUnlGDbxms9Wpx7XtV2hT6rHDWj4vyIeas1mQ1yIkPIn17oqkhY4wpcwv1MRXxKfqKzbhlAlsqGsyesVQeK/zcu6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(36756003)(86362001)(122000001)(82960400001)(33656002)(38070700005)(6506007)(5660300002)(7416002)(7406005)(7366002)(508600001)(6486002)(76116006)(110136005)(2906002)(66476007)(64756008)(66446008)(8676002)(8936002)(54906003)(6512007)(316002)(71200400001)(186003)(2616005)(91956017)(66556008)(6636002)(66946007)(4326008)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzVKb3c1Q3dJUmV6ZnJtM0tEZXc3TWgyWXFoR2VmQXBwTzZRTEpUUTd5alZY?=
 =?utf-8?B?ekhxejFQdjJTNlBBTDhwYlpsOG1BV1U4RFhLQVFDcXl3YTJjVTgyN2N0QUxM?=
 =?utf-8?B?aGlBTlpQWVR1dXI3TWVMVXBaZ1pTaGZweGRRZWRWblpEY1UyL3RuVEpuWXo5?=
 =?utf-8?B?SkRFdktmTGdFdHQ4S0xKMytsdURxaVIxeE1ELysvYXo2Ylp6REZDRllrOWVj?=
 =?utf-8?B?R0NuMnpnU1Y3bVN0MEtCZDVOOHVOL2U5dHVnRUUzaEloYS9uaU9vMXNPcGJO?=
 =?utf-8?B?ZlB6QzdVWUROZ3MvbGpURjdnbnBXOVZNU2dmSjg3V21IdHJHTGlwYjh2bFlB?=
 =?utf-8?B?NW1lK0F3Z2l2bjVsSkl0aEUxY3dPTUJPcDBObWNsNk44bGZ3NGNRdlNCNnRF?=
 =?utf-8?B?bHd4SkVpd0xudkVycEhvd3cva1RlVENDbEhZTUc0ZlhseU9HSEdKVjZWWWpX?=
 =?utf-8?B?RDIzak5taExOUW1aYnRTcVNNTDU4R0E4WGdkVkJTeGFkZ0hnY1A1WVJMV0dP?=
 =?utf-8?B?Wmc0M3Qzam1wL0VENDRnOWlZYnRNSzJ3OG1WZ3dNNkExT2xkazV6ckVKVy84?=
 =?utf-8?B?UmVLMHdpV2hjYnlrMWdiR1FNZW1FdkFVUnpwWjQ3b2VlcVdNdkFWYU1CMTVw?=
 =?utf-8?B?bXJSaUpIQVkrMDQ5ako2TWZESWFFeG1PNUx2NXhwM1V2QzcvbGxLeG1aVloy?=
 =?utf-8?B?Rmx0Z1gxMG50RDhGT0VwUDBTU2UwSGVRQlR3S25JUzljUHhPTFBNZWk2ZytD?=
 =?utf-8?B?MlVuNldZUVlaWm1EQjZtTzhNTmNmc0liTkw2YzR6NVdubDFrdk9OQi9VYlNN?=
 =?utf-8?B?SzEzZG5lOUxhdmJONjFnbzlXejdLYTh0YStac3l3YU1acE5wbFUxMk9Jb1Ey?=
 =?utf-8?B?ZlMySnhoVm91YXlsd0dZNlBla3ZkWHZGcnBXQzFrMnVGT0VvdDVSYllNRGxK?=
 =?utf-8?B?ZnA2RTJzOWI3SSs1bWlzQStwU0dNMHdWbDRIbnozLzNKc29TN1ZKeGdJclpG?=
 =?utf-8?B?d0FwRWlaUndaYVJOUFdubFVmdHplNzIvVU1GMUpDclZJMXczR3prQ0J6amYr?=
 =?utf-8?B?aDRUR2pZWGhGZ29iTFhBbmowUk5wUVFlekpBMEEzQlo3ZFRUSTUrYkdnNDJU?=
 =?utf-8?B?akwzQlJRUWVJU2NpaVk1MGpSa3pKSGtpMFBnU2w4L3lxSFhSN1FMem5GMHBx?=
 =?utf-8?B?V2wvb0lla2hPUEs4eVRrQjAxR0FQL1pGd2Q3T0RWVzNxQkZDOFJ2NWppb1NG?=
 =?utf-8?B?dHJtbE5VUDh3bDJyck4rU1dHVzh3aisvdzhnYWVyL3dBY1FyUzBVMmJ0VlVx?=
 =?utf-8?B?OUxFTXYzTDR4SmpmeklEQThaUzFhTkJ4aW8zZDBIdnpSMzN1M1ZUUnF6bzJS?=
 =?utf-8?B?cXZSUXVhZ3RBTGViZWIzdHRRWDhEcmpGaUVqQzhXSWJ5K3FvaTkyaFVMMHE5?=
 =?utf-8?B?RE9WdFpJTXljTXFsZnM2M2U2M1RKTDdpY2xiMFphQ0hWU2ozakorek5YbzFp?=
 =?utf-8?B?N2tPSDVJWUNUaXFtMmFNLzZTaTkzdFpqY2VURTJRVFdOdzZMUmNDV0JTbzlx?=
 =?utf-8?B?OStRam5ULzBuKzFEaWJFTkJtLzJ3VUtMT2lGUDB3VmQ1Qk1vRGpZVnc0aXhU?=
 =?utf-8?B?VGJwTkE2Vy91RVlWRHZtQnNDMllDMk1oK0x3VjRFYWJoQStYcGFmT1Ixcjg3?=
 =?utf-8?B?QVo2VXYwS2tCdGo5ZDZzcy91UUkwVGhRcHhsNXdTcXJscnU5Rmk2SWFReHdr?=
 =?utf-8?B?d0kwdWgvQng3Qm9PRW9yVFRlTEV3RUtRMmJqSnM4TjA1c2phUEszT3kwZU01?=
 =?utf-8?B?VWoxZmJqck5jam01d1R0bXprcGtsclA4aERMUXRmVXdudENnbHNXZUFXbVdN?=
 =?utf-8?B?MWd2Vjg4NmxSbXF6R3JmZG0zaGZ0eHJqL1YyTUlOTDg5WHVSOGxJUm8vMWxS?=
 =?utf-8?B?RlJlMUxhb2VOTkpjMm92VUpiSGJVMzcyU3hHc2FhcjFkVzN0Y3Z1MUNaTlhZ?=
 =?utf-8?B?NVkwS2RyUmVXdDdTVGRudUZFdkhwdGVYNnFXTEJmaE9Jck5hazhYWDhCcnhL?=
 =?utf-8?B?ZWFKSnF3Q0ZqczliZGxQaytpcjRRNFJmK3JjT2lZK1ZMZytiU2llUy9wZGNq?=
 =?utf-8?B?c0kxU3U0MFVQZXFmNDVmNWsvSjNjbHNhTmtIZ2RUS2w2ZnhvdWNNeHl2QjVu?=
 =?utf-8?Q?+/dzDbqLF+aRYb0V9S8ERig=3D?=
Content-ID: <F3587C1B20A4964A83E18D2662EB547A@NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 068d2e9c-a01b-46b5-a308-08d9e737b819
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 17:07:54.5822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: imXTm3EPfrbKMYXjCUm2jU9bdEax3Gw0bD7OYzqaqe6Wi5XKK5ZqSDIYYEWMZtJo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1584
X-OriginatorOrg: hpe.com
X-Proofpoint-GUID: qFweuUY9TVn4nc9WeKi8P_h19X_aV2Qj
X-Proofpoint-ORIG-GUID: qFweuUY9TVn4nc9WeKi8P_h19X_aV2Qj
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-03_06,2022-02-03_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 phishscore=0
 mlxlogscore=744 suspectscore=0 malwarescore=0 clxscore=1015 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202030104
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Maybe it does not look like, but this is actually a v2.
 Nick was asked > to change the naming for the nodes already in v1.
 Unfortunately
 it did > not happen, so we have vuart, spifi, vic and more. 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [148.163.147.86 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.147.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nFfbZ-00FMoc-Ca
X-Mailman-Approved-At: Thu, 03 Feb 2022 19:12:13 +0000
Subject: Re: [Openipmi-developer] [PATCH] HPE BMC GXP SUPPORT
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Wang Kefeng <wangkefeng.wang@huawei.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Sam Ravnborg <sam@ravnborg.org>,
 "Rafael J.
 Wysocki" <rafael@kernel.org>, David Airlie <airlied@linux.ie>, Linus
 Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Ard
 Biesheuvel <ardb@kernel.org>, Stanislav Jakubek <stano.jakubek@gmail.com>,
 Hao Fang <fanghao11@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Linux PWM
 List <linux-pwm@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Corey Minyard <minyard@acm.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Mark Brown <broonie@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open
 list:THERMAL" <linux-pm@vger.kernel.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "Russell King \(Oracle\)" <rmk+kernel@armlinux.org.uk>,
 linux-spi <linux-spi@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Marc Zyngier <maz@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


   > Maybe it does not look like, but this is actually a v2. Nick was asked
   > to change the naming for the nodes already in v1. Unfortunately it did
   > not happen, so we have vuart, spifi, vic and more.

   > It is a waste of reviewers' time to ask them to perform the same review
   > twice or to ignore their comments.

    Hi Krysztof,

    Accept our apologies if you think you lose your time, it is clearly not our
    intent. 

    This is the first time that we (I mean the team) introduce a new arch into
    the linux kernel and I must admit that we had hard time to understand
    from which angle we needed to start.

    I will probably write a Documentation afterward, as it is easy to find doc
    on how to introduce a patch or a driver, but not when you want to 
    introduce a new chip. 

    We are trying to do our best, and clearly want to follow all of your inputs.
    Mistakes happen and they are clearly not intentional and not driven in 
    a way to make you lose your time.

    Helping others, and teaching something new is definitely a way to 
    optimize your time and this is what you are currently doing with us.

    We appreciate it and hope you will too.

    vejmarie

   > Best regards,
   > Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
