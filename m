Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BF04038C9
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Sep 2021 13:33:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mNvpV-0007og-Lg; Wed, 08 Sep 2021 11:33:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1mNvpU-0007oZ-83
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 11:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:
 Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KZ7iQAFFUz3dk/xa0O/mvPMxkpp8mDOmj7gcLjyHDls=; b=Sb0vxo0LQL2J7NuOczf70rjUQW
 AcQYpwb9Q6HxpYI27FoylI7uWfP0yjRTE+chQKKy14VXBQ7RMee8huxPazxqWCVivZf8iE+nn4kre
 A+REUAQv6ZHfoLKHO/flOn5U3cOtp2PTVLVbmF6id6v7lAF2hWDsVOI6577yS8Mc56dQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:Content-Type:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KZ7iQAFFUz3dk/xa0O/mvPMxkpp8mDOmj7gcLjyHDls=; b=Eurxs6k6NUwotQo5UPu15UF2Bk
 a9As/P2lrXlQCNGZcyK6//7Zc8mu+IyF4fPz4akbBPnju9Y0S+UAN4kyS8Heoybp86bAQZ5rLcdqh
 oQ4M20XxrtCsuWk8NKk+hOOCvFLp9i0MuSx9H+GI6x/JpGhhK+t2Ey1AJQutXUJK0nWM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNvpP-0001WY-5r
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 11:33:23 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 188ANAcg030484; 
 Wed, 8 Sep 2021 11:33:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=KZ7iQAFFUz3dk/xa0O/mvPMxkpp8mDOmj7gcLjyHDls=;
 b=EVBFcnf2gbTdUQzXEsihwWoup/XEuCN81JMhOqA3Pq71N+uYyH1FHvRUW4kL0qRdy3in
 o0Yir85NiSYxIC5kPG33PQKaurmzoMyXhaDwpD2qbW7HY20p6OWJShrnaqee/69KSS8P
 z3npVXCkSRy55pZwOkdaV0Wy1tYXXs31ZegG2QVvuGWPgUYsnH5bgGDIPj4KVXSMbfgP
 wj1tOV5IA/jYhEXp3556yL23ZB6R9AbqLsHVKwdTXn/3Am13/wluqClJy7JURsInvvXE
 0RRIz09Qn/y+Pqb05rAJlQge9O7+vCuStfvJi5ylwy7cT4Jhm1XOYLFHkL3g7cwn0EEu zA== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2020-01-29;
 bh=KZ7iQAFFUz3dk/xa0O/mvPMxkpp8mDOmj7gcLjyHDls=;
 b=vU83LdPJg0c9cR6GXZbQD25xdMEEb6bFAOjSCwY75wuwJ30hm5hNn2sRZk/ouDn/ZgZz
 UgrJl0dmCd3br9LWVNDOk1F9WHJWmI74hCWkyQocnBlp+nAZEzQpkuxClY6kiiKx76nO
 bfTUwDuR0mMLDW0Fo7HijnbZFtHc9Smbbl7Ra/Cj8tGKm3Yjrs3i/C8DuOEhKFGaH8Bd
 FcoTeMeUaumI4kHKtHR/G8eBy2ph51mcL+aJsTzLQ0lePphR1ttdu/btjKdnwPG9Q6zw
 cijz/6LZ/grsfpPkbf6Cmkar2Cpyab2SBBvgrYHBxNEH9DVEF+tTFV30PJKL1Z7nv7UU Ug== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3axd44tafr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Sep 2021 11:33:01 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 188BUKwO052377;
 Wed, 8 Sep 2021 11:33:00 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
 by aserp3020.oracle.com with ESMTP id 3axcpm4151-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Sep 2021 11:33:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDzh/hI40e8Ms4BRM43bUbN9fbB2rW0wNhholsYE7O3u3nCkAZOJjIsikCk4Z2Bb9XzeHNMDgW54Ad5m+7F8u4AyxNJwCUfLZ7pucyIu5k7wtqW86HFSXQFXx6EFO9YuBMvDxo9uYvMMHJtLWXlJSeovtNJfdck23EYrNiQghitn5INQfk2ElPir9Dh3I8yU5vIdDVTC1POhcZIFzdKEr8IWvH3myaDnX3wbE3jWo2SK+THtFSQhVx6l0UcSxmzyGPLpNbxwZXkC0iSL0tTa3MfGWJvehdaxK9rF/1ZCAO+j7H9UAgZ9obnaHyu2aId1xzzYuSc89/jOffdoUWBYVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=rdCSm3lqqjOb3lpK4hXIXABf4xvfmc/wQamDXTuDJNA=;
 b=heYJlbyDQd3fDGrlyUme472OFJisZMUecP4M9HUgSf0l4zIW54+yZLFLRKl4QEjZNIQpHgHjRWzJpt+67jDoCFJ/GPENdL22CmxHc345lx2fU6hwEfZVacpFqjpy4sSxaO3F7gnV7VPkJmwDkvi7mEIwf/5YvgIFhGSzA+rX25qQSrHBSO3JhtbYYq9g0y2/U1DmAxJDuLgf8aCJQeSUJpRtYDc2zj6XrnRjAqnTqTeWSgSTO4lmjYTOnA8sexU1qxpQPw2IOaa1bFX6FR2b5JBy39O9tv+MKyD19xVXSY8m2r+pHIgXdZipY1ezMM5g2LpYcRFIrWITyky2IFTkEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rdCSm3lqqjOb3lpK4hXIXABf4xvfmc/wQamDXTuDJNA=;
 b=rGrqwq7vpq7n+DuNPG28WY4j+lcLZ6niMKq7XkJib7wGEi0EHVlj2bKkdEqpHtXgfPdBVOFNqEranHBS9EmqM5XaytavWIBIJS1u6Wwb/pNxoemlY5MbpRA9lUFktFmQ23Ym6c1po30rYM6MqSbdHHaO0P+JB7Kb5KAHDmvzYlM=
Authentication-Results: wanadoo.fr; dkim=none (message not signed)
 header.d=none;wanadoo.fr; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1903.namprd10.prod.outlook.com
 (2603:10b6:300:10b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Wed, 8 Sep
 2021 11:32:58 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4500.014; Wed, 8 Sep 2021
 11:32:58 +0000
Date: Wed, 8 Sep 2021 14:32:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marion et Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <20210908113239.GP1957@kadam>
References: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
 <20210908062719.GO1957@kadam>
 <450800047.345.1631083814685.JavaMail.www@wwinf1e33>
Content-Disposition: inline
In-Reply-To: <450800047.345.1631083814685.JavaMail.www@wwinf1e33>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0015.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::20)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JNAP275CA0015.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:4c::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Wed, 8 Sep 2021 11:32:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11335f85-1859-4bc4-c04a-08d972bc682e
X-MS-TrafficTypeDiagnostic: MWHPR10MB1903:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1903E6CA8F487C8C09CA54C28ED49@MWHPR10MB1903.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5eFRhTGgITkDQB9NLUYuOyQ7bWjXYhSRFnOq3cKFTeayk4xiqdMEGK4vhJflsiO9XAxW2ZMA1SiBoDmSG7qQE5ZYUb7U71zTH5iOS2JrkKm6t0MCCn2/rjeMVsVMBMMKfTZQLWd9dIH8LfnBtHzexZJt69etAP+0XjgE8L+LRYVZOCRQqg5gFYflIToNcRTsKfYMwh6KTnKYbWq79ZSparJlilkrPDkCk/wGO7ae9xxS/wN5biVd9aecIdwltg1rXcxNFUDaGWGBXWEHlT49sO+9l4tmGeSUYgMz+09rIOzTUP1ayOelsdSkb7OTzQ1NIzPCLZ4Pnzs4CWFhYhmcADdS/yEgVbKxKxxBe8szZ80BYzkDljKVSLrS3GiTQsT3IilcOZFIkcxxw48kd1lDAm+aQmB2avVNgrQELODF7VXxI+HyFTHUa/nw3C4etrFuxM2XCzRKYoWtrRGni1dXuLRODlZ8hMr2KxteCL2bWms7aUuPNDfsUp7h7bSFxOAfqZcMHEHvXWSEl1at0TWGwwxxk/IEOW3fV+wplN266sG5cHZthvWR/45mEn1aLQFDANkgigGU1vsRrAnRUGWBP6zIEFf8cchkCR51D0yV055/B8Esxu2q2GseaptLfSf1BDRVKDG3jEbv/NEJszHmOU64mwE1iOpkF6H+TrKvYOJnmJ+EUOdgtZJ713jZJjok83Lu5QwUkFQNBSetMlxsWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39860400002)(346002)(376002)(396003)(83380400001)(6666004)(9576002)(4326008)(6496006)(8676002)(66556008)(86362001)(66476007)(5660300002)(8936002)(956004)(66946007)(52116002)(38350700002)(38100700002)(9686003)(26005)(478600001)(6916009)(316002)(44832011)(186003)(33716001)(55016002)(2906002)(1076003)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xXzlEBtIBWEgmvXKhvir8spPdVp05V09ZjGjjWKQBrl/AD5TNAEktT9Z8p?=
 =?iso-8859-1?Q?6jFFnrTKmlYicZkrsUPribm1TwkpLf4SkBUSGpod1HxqwiryYM7JVvsYU/?=
 =?iso-8859-1?Q?KcrCP9NmhqIhpwGE9O7S3bYP9KwjhSPIZVd6Yh1kxC13z0lzXS052T1H1r?=
 =?iso-8859-1?Q?RJUBN1kQGNHzGG5c37A3mlkn/vTwDUJfagoe0ohGvXfDC6QJm8OAfHJ5qa?=
 =?iso-8859-1?Q?BTq6Q9CPrl0vCmwXT9+RrpwvRKly49ss5DU76CpFzUmlXSBi2ZBXSi/iHG?=
 =?iso-8859-1?Q?XhP5kqaGDzbWK+twNrrdu0S/MCpK3uMafeZcS4BZNbZif+tkSSSnuikHOd?=
 =?iso-8859-1?Q?8NjLTE4AcLwVr59pR0DexYgqeIKH4PQBuLnQGb1RHQLEvBlrJFHEVsWi1+?=
 =?iso-8859-1?Q?o5wvK+9JupTfGES19J5ID4RjCm73qXsFm/eC+wJ47DP4W31Ls2g77QEV+c?=
 =?iso-8859-1?Q?ehZYJqW98yY2zZyKt51cMh8kNKLKd8Y9dfJ3ocOgQ+IgzqqrWr7EqKKD2y?=
 =?iso-8859-1?Q?iHHMKcfqiYdR7nG2L0iuGtsjvQRCXFOBZsKaIuYQKWhByv8S6echo6aYVU?=
 =?iso-8859-1?Q?jAZJnVMIecayjwDucnyGg5qdnimvGiBKWn4wHHp2ekc9jnq5zj0KQlCtYN?=
 =?iso-8859-1?Q?WPWFtpmZD514Fot8wMcP+gAGLM7vtZPL6tqTxirJrbNlgW/biDZYImtzI/?=
 =?iso-8859-1?Q?Brk/+cxSew5rJBjYN7LCxX90VL+235TM5rjb1gS75FeTyD/BUIwTkRYGPw?=
 =?iso-8859-1?Q?s9RBF/BCQ4BSPELdSEf2DOkQhxs6KBhOCYdRHtAqS7aWNZlOfziVkVTo5m?=
 =?iso-8859-1?Q?ySDVao00CcTfF0Fl8PreMihEQdiHeucjStW7dnK86WX6MlRWJyuYuueFS6?=
 =?iso-8859-1?Q?tRNcalAQUsVhS3dfgYGRe2HVU3HbxIhVBkAY0xX1IHdpDuBwye4sf3RqWe?=
 =?iso-8859-1?Q?knD9hAZs3FHjVyU+qve1/mbi3BAnHOgXNYZFawHsJ+BJWndQH8xajBnb8g?=
 =?iso-8859-1?Q?Ib+UPHRZcEGKOWiCZaU5b9rBhERmI9D8zwNJpr2T9fDlvZXp5NQpT4gTWL?=
 =?iso-8859-1?Q?DIbAmNljRwuQrCmnmSzZzMMEhSUkfNnCJFD2fR5jB/FCDSvikar7X0uYJr?=
 =?iso-8859-1?Q?EmnKBT9q0eX84B1nrJLXYaSVs7vLdlOAQvbMtY6CYnvIATTZwAKcaQNqSX?=
 =?iso-8859-1?Q?lWzwxoOz4QDQL+3+DIKvnfTS9X/YppYVtYPXx7yhP9TXBaucbZJ1FuCIb9?=
 =?iso-8859-1?Q?QtREj+dvZzKTX2WTAXCsp35DPWzR7vtne0yFbsdMqzJYQFKzaeJwihulB2?=
 =?iso-8859-1?Q?q73FKNdyzMY1+h4r2oV4rqRYMZTvsD+HIPm+gE7p8REdC9HmbfnomIhdn3?=
 =?iso-8859-1?Q?NyzrguguiZ?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11335f85-1859-4bc4-c04a-08d972bc682e
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2021 11:32:58.1955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TtvGrfp4Hddl/bdU0XeH2eP8Uo8K5po4QOt/kyJRHvniNchAcwMmF7ouZ2cVpFJGy4/TB4WlD2YrKvSPVmWdAjgNjCUq3GoF7JkY3GOU4fs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1903
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10100
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0
 malwarescore=0 spamscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109080073
X-Proofpoint-GUID: obAJbrJpG8OML67luv-o9EQ-s5-YToCa
X-Proofpoint-ORIG-GUID: obAJbrJpG8OML67luv-o9EQ-s5-YToCa
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mNvpP-0001WY-5r
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Fix a memory leak
 in the error handling path of 'kcs_bmc_serio_add_device()'
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
Cc: minyard@acm.org, andrew@aj.id.au, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 zweiss@equinix.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Sep 08, 2021 at 08:50:14AM +0200, Marion et Christophe JAILLET wrot=
e:
> =

> =A0
> =

> > Message du 08/09/21 08:28
> > De : "Dan Carpenter" =

> > A : "Christophe JAILLET" =

> > Copie =E0 : minyard@acm.org, zweiss@equinix.com, andrew@aj.id.au, openi=
pmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org, kernel-j=
anitors@vger.kernel.org
> > Objet : Re: [PATCH] ipmi: kcs_bmc: Fix a memory leak in the error handl=
ing path of 'kcs_bmc_serio_add_device()'
> > =

> > On Tue, Sep 07, 2021 at 11:06:32PM +0200, Christophe JAILLET wrote:
> > > In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
> > > succeeds, 'port' would be leaking.
> > > =

> > > Test each allocation separately to avoid the leak.
> > > =

> > > Fixes: 3a3d2f6a4c64 ("ipmi: kcs_bmc: Add serio adaptor")
> > > Signed-off-by: Christophe JAILLET =

> > > ---
> > > drivers/char/ipmi/kcs_bmc_serio.c | 4 +++-
> > > 1 file changed, 3 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kc=
s_bmc_serio.c
> > > index 7948cabde50b..7e2067628a6c 100644
> > > --- a/drivers/char/ipmi/kcs_bmc_serio.c
> > > +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> > > @@ -73,10 +73,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bm=
c_device *kcs_bmc)
> > > struct serio *port;
> > > =

> > > priv =3D devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> > > + if (!priv)
> > > + return -ENOMEM;
> > > =

> > > /* Use kzalloc() as the allocation is cleaned up with kfree() via ser=
io_unregister_port() */
> > =

> > The serio_unregister_port() calls serio_destroy_port() which calls
> > put_device(&serio->dev). But I wasn't able to track it further than
> > that to the actual kfree().
> =

> Hi Dan,
> =

> Checking this release path was not the goal of this patch.

Yeah.  I was just curious.

> It was only about the VERRYYYY unlikely memory leak.
> =

> However my understanding is:
> kcs_bmc_serio_add_device
> --> serio_register_port
> --> __serio_register_port
> --> serio_init_port
> --> serio->dev.release =3D serio_release_port
> =

> And in serio_release_port:
> struct serio *serio =3D to_serio_port(dev);
> kfree(serio);
> =

> For me, this 'serio' looks to the one allocated by 'kcs_bmc_serio_add_dev=
ice'.
> I think that the comment is correct.

Thanks.  This really helps me actually.  I could just make a list of
the functions which take a container_of(dev) get a struct serio and then
free it.  Then if there is only one function that matches that, I could
assume it's what put_device() will call.

regards,
dan carpenter




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
