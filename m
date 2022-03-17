Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A814DC17E
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Mar 2022 09:40:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nUlXs-0001n1-JF; Thu, 17 Mar 2022 08:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1nUlXr-0001ms-4s
 for openipmi-developer@lists.sourceforge.net; Thu, 17 Mar 2022 08:39:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=isGr2vYRA+oBHHiT3n00ItRdKoBZ+kfEMAe8iSLq66o=; b=IEWuuKIHHVOIJyFCEmdUMJ0Pc+
 BwMg53RYF3SN+DO0fGjztfBlFgiNzpoiOSE7ztTsMngQBCzzLgV6V8Uhg3sT8so3+PFtMVHCs43P2
 PplpJI76bwKBOI12HNpqEwGbtLYg6y/mZJNK0z6lnHCqoCTiuZ/kAPUOVT185Wv54KNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=isGr2vYRA+oBHHiT3n00ItRdKoBZ+kfEMAe8iSLq66o=; b=OAqrHcjOPLmbN1HgLHP8sOWkRN
 5GivgOTNUYNjVOUO/mRk3EXS97tyrKTTrk73Mvmm1trxAJnUd0OXM8rrqnJwgatH4BF9crTiM0l4+
 A34UfXoDBlOjBplHf8mXr2wGpWPzuOO/uRFTOys+EPs3apBQUjNk6Y8ExEhurWMSI4Mo=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUlfj-001jHR-Dj
 for openipmi-developer@lists.sourceforge.net; Thu, 17 Mar 2022 08:39:54 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22H8Ox7f018273; 
 Thu, 17 Mar 2022 08:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=isGr2vYRA+oBHHiT3n00ItRdKoBZ+kfEMAe8iSLq66o=;
 b=Pcufnv4cybGTmNhbL9yn6iQuS/vCOcYk/I2FN3vIL3SggJkWHNu1QlLkr7rJhg+XIFxr
 cUaHEmUeaXljTo/MB+sPz/onG2vg4yAsHk2USv4kh/dX7I0CMIsbZ/ONW55AVSgIHIe/
 toXRXmQFPZICXCG+RQ1sG7NLLJvRiQLiYZsRW7RSmAcLKAF3kzgeM/iquISbXkqG6Zsi
 fp+WibSDNHRMYa5q54na2TwOYSckF4nKULG4TzeeOwmeQcVfAGgDEyRH6rkWRAXS/5BG
 vcb73Hb8BoNAIf/9tKDJB3z3i44J5KUEJRKgMZuJWUvhMNU1pomYJ8RHpwxSx8xtK4po QQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3et60rrkx5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Mar 2022 08:39:19 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22H8avr9092454;
 Thu, 17 Mar 2022 08:39:18 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
 by userp3020.oracle.com with ESMTP id 3et659c02a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Mar 2022 08:39:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dArbhV1+1Tp/5eNV8JWUbR++qJvhsMvgvpNDEfEuVX5azeZZgf4b7XukkcaleLfTa9d41cGNSyfTvV7SRggve5NmJaA1RegBOayigAQDjvkZR7bWFPwWd7ZNRF+5hro6BCfFq6EMkFN6ZI+bEEUgyFUu1LmIHri3/4CyaRqGCSzxVZhIhSZZjnSY2ur/6LIRLZrEDwcbbNJmRSpnpOZZhbbIp5sFlGghnI2lLtFG6O/iBLaPS6gbH/4ZW2SxYYKuZ5JEK/YteVrA0fUKVZga4wi8FPSuwtj0htDF4bVlxqdZIipUid3js9hhsK7vFUVvh4A95RHSl1avhvR4wZ59ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=isGr2vYRA+oBHHiT3n00ItRdKoBZ+kfEMAe8iSLq66o=;
 b=dGbKN4jlGyH44Oa30+8HyUe9i7rq7yzo+YQnxLZ/tQYszhjnnNtkSdQb7iEqAttUztJvTC2N0WZOvCJam+CLwBvInwgmJ2g9kC1+nQaouBOU/PCQIAKmbINJrO66usb377O9fAPO+3eRNT9ckoZF4SQpYSE5oWtM73RA4Bx2ztjMj0wpXAvBXWOt0od7vJCV/oWAB0E1+32M94EdvElcpQJrReHF+xFcrlOF5Ft9MzOBhWapO28QgC8G0xHi6B+IcitM0aB432MWE/M7wRTYnY3p/bOZxjhLyeZjM/gY1W8JAmWMguf6G8ojsyI3DF8Gjl6VwkCd20UYuWf+7noQ/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=isGr2vYRA+oBHHiT3n00ItRdKoBZ+kfEMAe8iSLq66o=;
 b=sXCuceB3kHwz/fc/DC5loa5Fq8g8UlwFtnpeC6N44GoLrE25hFY08Uvhzo9xUgKuiM6cGBXd34cbxYlIYgf9Soqyfl1PWYPYORZJVGNfIrTnGzc18lgeX0AS7kXZioGxJzbUnSr7TegqS4NJKfCuE89ANHb1R5W1yR4YGCweq3o=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by DM6PR10MB4249.namprd10.prod.outlook.com
 (2603:10b6:5:221::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Thu, 17 Mar
 2022 08:39:15 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 08:39:15 +0000
Date: Thu, 17 Mar 2022 11:38:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20220317083846.GA336@kadam>
References: <20220310114119.13736-1-quan@os.amperecomputing.com>
 <20220310114119.13736-4-quan@os.amperecomputing.com>
 <YirzJj/BBUQTbKS3@ninjato>
 <db5a879e-5e2f-24f0-c0fb-4971679a45cb@os.amperecomputing.com>
Content-Disposition: inline
In-Reply-To: <db5a879e-5e2f-24f0-c0fb-4971679a45cb@os.amperecomputing.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0048.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::11)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6957d6d-b1ce-450d-35a7-08da07f19e25
X-MS-TrafficTypeDiagnostic: DM6PR10MB4249:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB42491CDD73E726469A843ECA8E129@DM6PR10MB4249.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1PLrRU8gWQjMrh7KlxdIYDJipZEhxSm4caJC3d/FoTv9TnpnkZq6/tTmaiHS00f/rn6KDMSW6Ugkal69qNo156moKZTP7axBjyeFsniwZTVf4RZlKldsknk53ShpjnTNxdzSSfi7DAOM+rUFsYUrrOmFtRvArf2zElAZuLpRxTm+t+kZNsymFjLgpMuc30LrxcwHyUgW/CxxkoH5/LRjwx951iGUOIv6rLPqI7pVuCxDIv9QAUo2JLVN9QIIC76xe1HSBrWZTZscVcFf9AdSKAabf7O1myTGvlLMzK27c+ZzA0Le77Zbe+YgUbxatld3pxmQBIfEN89izR5zVZhr8d3xgBvNuKKuxmO039hGaodMZwYr76J67sB6Bm/F+ibD04UobXAF1aFd1epb/Rx+0mzwwvfq3dN6iaXxJuJXie23gDUnV+Zaf0/c03O/j/VY/aIE2JabxeCtJP8uGskfK3mHI5hJWwlNb1EmZI4LRa35XnU35VTKqYFS8ZYFzAc+u4LEW1QOd+WnfhbIiYz/Ej3Ra64N10NfrwhWEeGbiMjEaW6ETH2K7BNYA53MAH8ZUX90bmk5QhPKJ4c6XsUUnckIxd/I8nlNgbDpchVe1Cliavr4kBcP/Gka+ojBLXDUBZVwIByXwJE+QBsyM6jC5xuA8G5GxZFdU7iojE4UFPsCWfQ+vxwXZvEH6gUKmFLtTpuGaCEGqSCoj+v+T281/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(6512007)(9686003)(53546011)(52116002)(6506007)(508600001)(6486002)(33656002)(6666004)(38350700002)(38100700002)(5660300002)(7416002)(2906002)(44832011)(316002)(1076003)(6916009)(86362001)(54906003)(33716001)(8936002)(66556008)(66476007)(66946007)(8676002)(4326008)(83380400001)(186003)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zUwWrHsW2u0d/STAN5MKS3gOney4oe+gL+izlREB/gHLdkzNfIC8HbYBUmxp?=
 =?us-ascii?Q?49hxUq7+xl0SB0oaEVl2vJ1zxJFC5z+Gh0Vz9+FTkW3cZlxvx8WVJ8riWU5n?=
 =?us-ascii?Q?kvwtqQJYLrdBuexmGg5PfTMDEy6UzuTrajim/yn8pnaC4t+zjY2wCUDvHjZ1?=
 =?us-ascii?Q?fTmwow2+BeDNNAzMn2X/oBK0FUsng93D2pZCN9I0BI7pttOLH1RhMSm36oyX?=
 =?us-ascii?Q?TaeUQu4rCKfChR1imq1aZr7WemVFwV/QjyWJHDp8/FhWAsK7/yzdSg5o+8dh?=
 =?us-ascii?Q?J+kvp3oXmCijcYi+TGHhNFwz8RgF0KB2KxFbNDxqgh//9uMNkRwQvENCwGwj?=
 =?us-ascii?Q?6/VHuciP7m9b6wxct84Ne11VTTX6391lVzkaZxuBIiRg5XrfJTY/Goh4LNPV?=
 =?us-ascii?Q?JdW+nE80LhmvCfiFQ1F7fxEz3woUTXvUpWK/itwN9LEdIGUSU9rPD39lAxNJ?=
 =?us-ascii?Q?dfgf811jWVEEOC8ZVv4MtydJppSbLTaULyU09BBihTvjEWxSIppUxNeDZ+Vj?=
 =?us-ascii?Q?hrEm5TRTatLeMyeCuyq1W3tHMLmSWhYikEh7uCdxns5IKaljrCg+F5NA7SB2?=
 =?us-ascii?Q?+IaQiPOKfg7/NhxZOsYSuz8ZWtmPOYPfDLoib8ksvO6CecICdMjpPNM9k8uu?=
 =?us-ascii?Q?eKJI6U6/8o3i7W6DU8p+B1kUMBsYj9Fdu8eVCnTLTbYP5tHL1sShT212yM0m?=
 =?us-ascii?Q?ZBvPb2YHv7OEBaXvp3JnwGQb2BCGM/d9/dpKLkk12UQ2lEuFgKf90jvwDLMs?=
 =?us-ascii?Q?4SNJ0EdzPmqWfFb+M4hUvbifiUDJx0FO58zZWOyzNeWd/bYXz5+671c8xmEj?=
 =?us-ascii?Q?l6WMcPUZNkWcRMBczFrDPg3vds2uvyNNwq5NiR9vz2sjom1IMQFRzYxzdY+F?=
 =?us-ascii?Q?gVKCgR/15EH/zFOYUraaeeGdlM5rOyg3Qlb+8ACvQAbKx4rtKnP/ZI0NJJwr?=
 =?us-ascii?Q?9bIxjzEuPrhB9lnLl2ZWw6c3SxFKBBtxvQmQLFh0QoOU7Ugnaar2u+PIHyfj?=
 =?us-ascii?Q?Tghts4FzH9INPcwZ77R8FbAlO2NTHolZGRQ6XMp2eQjId5xzD6sQaSA4FWsy?=
 =?us-ascii?Q?QduNtgKSb71yUrAGIrBNDK9th7TusxTR0jiyRNgUmr05wx31n9o1+CoISaU8?=
 =?us-ascii?Q?ATZ7jpN6qjN4XZX1dFSlH7xyAf1FcGGwFKYKBkprX3lST7foI8EqakLn0PK6?=
 =?us-ascii?Q?ZAvEtnwBeJfW5YurwZ20wta7RmVjkA5EKpLv5ZSsdI4y+//LNZA/Uh3xTX3G?=
 =?us-ascii?Q?bxZdj3olfWNgVqLi9hTMQT/XsCKXid+kGw/BLxV1U1HRXd9bGqrpGD/Q+3lt?=
 =?us-ascii?Q?rkt2hGNhm+AlvzphfHmkyStxQSumd8TBU2y1yAQtqt+pqMOmVhseoAthVKii?=
 =?us-ascii?Q?CV+rXvfywycfkPWX5b4NceTW1n4Ss1iTA3cHEIhAKOROtwwLHqAyKBYI05sR?=
 =?us-ascii?Q?4Ej27yJ9mg1CijWvF/cpxQwT60MeDVRQj71TqfUjI96VnDbsUqfSVg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6957d6d-b1ce-450d-35a7-08da07f19e25
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 08:39:14.9504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: du6fFqrsEqIe/it+N2W6qA8Lf3oKFoF44pRC85p4ZXLZWM0stFCgsrMBD9tiVZaY009BfX5/rRQdVYLAglSR0RwlHhK8d8pHjqAZey1PuVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4249
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10288
 signatures=693715
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203170050
X-Proofpoint-ORIG-GUID: Mbq7EFKdFOFXEFIaFLHaieSKo_h6Y4Xb
X-Proofpoint-GUID: Mbq7EFKdFOFXEFIaFLHaieSKo_h6Y4Xb
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 17, 2022 at 02:45:19PM +0700, Quan Nguyen wrote:
 > Added Dan as I have missed Dan's email address in the first place. > My
 apologize, > - Quan > > On 11/03/2022 13:58, Wolfram Sang wrote: [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nUlfj-001jHR-Dj
Subject: Re: [Openipmi-developer] [PATCH v6 3/4] ipmi: ssif_bmc: Return
 -EFAULT if copy_from_user() fails
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 17, 2022 at 02:45:19PM +0700, Quan Nguyen wrote:
> Added Dan as I have missed Dan's email address in the first place.
> My apologize,
> - Quan
> 
> On 11/03/2022 13:58, Wolfram Sang wrote:
> > On Thu, Mar 10, 2022 at 06:41:18PM +0700, Quan Nguyen wrote:
> > > From: Dan Carpenter <dan.carpenter@oracle.com>
> > > 
> > > The copy_from_user() function returns the number of bytes remaining to
> > > be copied but we should return -EFAULT here.
> > > 
> > > Fixes: 501c25b59508 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> > > Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> > 
> > It is nice that you want to keep this patch seperate to give Dan
> > credits, but I still think it should be merged into patch 1, so the
> > initial driver is as flawless as it can be. You could give Dan still
> > credits by mentioning him in the commit message IMO. Dan, would you be
> > fine with this?

Yes, that's no problem.  Thanks!

regards,
dan carpenter



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
