Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D31C03D36F8
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Jul 2021 10:45:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m6qoK-00076q-Vr; Fri, 23 Jul 2021 08:45:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1m6qoI-00076C-QY
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Jul 2021 08:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=; b=gZzfEdKK+72sK4x7hPapFWwMch
 jUtslkJk9CwVfdDngESc+jjTVC2kPOe0K7d94j1XyJH+lU3Z8CBC7B9+aRir5tzfEX4NIocTFD+Vg
 pxnyOBhz8cJUOg/o7mR2vd75Z9H8U28vgPA4WLu6bZK3C2MyJgM1d9/f+eZ2HypvaOyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=; b=h
 wnNMH/780UxI2+0Ko4t9Weeg7NP/pv9jeDSVidwEzWtt9K1hweQJLq/ysHroZjbZQEob6PdXthJUh
 /AedP4/baScxp9+9PZPW10mqiVnhgYNWUngqVdV/qP4B2rUSJFMM0oDKG6zT1BPFkohrn7sgU3v9D
 4roW67zog/m9xxRc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6qo8-0007if-7B
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Jul 2021 08:45:34 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16N8V2PD025621; Fri, 23 Jul 2021 08:45:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=;
 b=wIpY4wBv/j2gn3UglCKN2FmYL1huUZThQhdxzkdFecB6kx1ndJ8ij/b57G/kTkjEgeYl
 6Xv0M1zhvoT1GMEuCnj86RcP9MnuEV8pVSw93NIMIWLK6UDEv8kjESL5g1I7puQd3WWj
 HKkq0zWxTvF84BZL3KufDzUD6nsapAj3KSAPdBzC4xR7Ync7+nBLx7JGEICYAWPC6uD7
 Nqt6axGGW7Ri6/6Nod69bJulIIN5Ey4hjC0VDAJfycW8QXGIgehjJxrHAlDAnGAgZryA
 JqHzxZGIZZEWt5xp1vBsDeUM6uZabAjSMG5IeXhvfoAYhZu1gU/OZGwLs0zVNvyR/IZv Lg== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2020-01-29;
 bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=;
 b=x/zm037/Va2y3BZqsXOaMp8Y2ZsiesN/z79mTnUeNTsH6XlxQ70ZW3t9qQ0KJCFZ3yR3
 hEx/oh2o6ytOlMsOxQ+WuCiq7NsjGfM1Oebkqs3s5X87dfEs+WyYeiVP4cytG35h2Abs
 AydeCA0YMOGlHmHTDvhspZMAvpKjAmRbE9umJtRbS+zLRLz/44IHsLSno7ZtBHRUO9Re
 ByPaa0s9hFX8MLC7E+3pE2Dn6z4MsaEr08fQigcxhEKlzcUsTsr6GaWR7v8IIQU0rlK3
 De/FGCKpBHzhyeOeRFia3bINb7mOqvM2uWguErm5JVTq/ozPJkl5WxhN2Oxp2v6VCJZY CA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 39yj7fgpv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Jul 2021 08:45:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16N8UgW3069765;
 Fri, 23 Jul 2021 08:45:15 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
 by userp3030.oracle.com with ESMTP id 39umb6n4bd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Jul 2021 08:45:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fs66ymdBgpq8bUMTfkDQfUv3qvwVn+o25tpGxTzyhQORbzoIRSzo1bIGij6oaeU53yVUvEGd49RhFmeuOH++cQm3hO5dUttO1ResR/n6INi6wFZ4EP32Tm2la/cr1mF4wONzvcH/fDLcFMjz7oNSs7zhc33a9MGKBs2eBP8Ut7ip6thx1xdjT2sWS9c0mnh/3QJuBbJ/y6W/7nobRi2HWHQN0K4r0sXyBE4WzgxY4UUkiaWTLalB+HS619tcEAEIx+/ptwadNJQz2W+AR18eHHd9q7+zgh/0cJjR/+oSKGaWRYeATGCkg6ilbYhMVt7WLyDCxcWDtjNScf9gXqMOfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=;
 b=EIWDIssq3yhu87gloQTbEghVbD26znQSI1jifd4s5Zj1Bc46FdoQx9VbNOL3RrpJrdYHvxw2k0ZYd7ViN/uzTkfYtylLUiqnh7n4lXKElPsgkiJKvpBdibFhLmE32zVmOHHjSQBzF1MvPVTfBkBMB+inByiCTc3B1Qp4SLGd3QsWv0I3C8erb2UwSPXzwuvUsbnHjlGKS15Sul5ifmdIHgKI7vBk097DBTevSCIF2Wq0ApQzSOy/fCGpcR3R8ZTERRsq3+PD6JHznHthDyYQBqpB0HYy+KFOyjbHCB6HY3thaC5QhAIC1hNrzSlCTVUaVZ1nQqwI+mxWc+zuKMU3cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uPCkkNR1PuH83eXmb03N61rPoaTfSqCHxZwQkI4dSMk=;
 b=tlt497sOfO7OcZFHFldr/Ibe+JCz1UXKSeYS75Wasa28KNKEsgRBLLeZ+4lRpBydpILu2lUPenUJyhkmKarffxo4tWNRLSHc6fMAaD2iGHeNbOf1T+wpNhT6jy+z5thffVui49w3JgqVX9S/0AFMuzbJ5YDpA/xTbtMOtmjabvE=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1376.namprd10.prod.outlook.com
 (2603:10b6:300:21::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Fri, 23 Jul
 2021 08:45:12 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4331.034; Fri, 23 Jul 2021
 08:45:12 +0000
Date: Fri, 23 Jul 2021 11:44:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210723084459.GA21470@kili>
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZRAP278CA0015.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::25) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kili (102.222.70.252) by ZRAP278CA0015.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24 via Frontend
 Transport; Fri, 23 Jul 2021 08:45:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bab0e806-7f01-49a8-9eae-08d94db62f10
X-MS-TrafficTypeDiagnostic: MWHPR10MB1376:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB13762E7EC7C6D33B05E9D2808EE59@MWHPR10MB1376.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 26v/vXj10Ob1utaih22BT6kIsFDxh0944Qr9Uuj7MCryIrTDkExSzhv8L6mb/glE8ky1rwfcaIHE56T0d1UsVNV72NJVjgHwwPj68jM2L4Ctpju75Ez4TyHRIzCksWLOApErKYcu3m30B3gyQ8U7GnlTUNpF9MrtvywS6P1lS9zpPre1PyxWWJ2NfyyxZsnu1voq8cTzSjLkG+eH+vQgGjCrvPgPdZrq5uItjlNvJzMk+IBOQsz8UIGXNEfvqSmrPZJGWuuj9+9C7O+oxW5GM6Wt6sSBEeB8iK2CJUbmNlY1494oFwkdPQbXv+Jzzx+75+LK9TUGvmjiK5LHLIMi942AWHx+DGKti477EdRS+qD0N3GQffEZzOKLHqwHVNf4WTiJHBDKKiqAn+p7tv9G2Xo7c4I7pQwPo82BQfHFGW3VxbCbMMeW7/eduz+ymA+6RP1eP5njhwh5Hy7Ay5in+wmCCrjdebJ0dGve8gXhu88sVU76/ylX2N3NKFNZbARYQkSXzB+p8hCXie3IQ/G/QyJ3dIIpCYds1ipWH3Ip9+AVJa0p+xSHkhewMBxWdWHIGYmthVK4LZ/rmfx02kqjac9V2v/R/J6VMsvZfH9VWeaoEKL9QtM7FP1hWymj2z0fPWvzZ4Q4Xb8yIR3bFANZkruuEV3/+3s2TqL/A8uZe6P36LV316Yq00dzHIt+f6Ahpn37ymgAXvS97V5D3oiHBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(136003)(366004)(39860400002)(956004)(86362001)(9576002)(8936002)(8676002)(186003)(5660300002)(4744005)(33656002)(478600001)(66476007)(66946007)(66556008)(26005)(2906002)(1076003)(44832011)(9686003)(55016002)(83380400001)(38100700002)(38350700002)(4326008)(33716001)(6666004)(52116002)(6916009)(316002)(6496006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HAhs0DvIJnMlNO1M14x78AAFkGJgVTFlVJ1jP1/B03L8GWkVkdQmtjSxVQ3J?=
 =?us-ascii?Q?wNB4lXYMMlcUL+tccuDm2nNNNu3oG0VlerDLfqmz2dhy/SKoDBV67vLtuVh1?=
 =?us-ascii?Q?sN4dotg7ZebQWIY0ytXMpPzOkDkJwf0gACxex0Ssjq7KVojxQUWgOjcZ3VkQ?=
 =?us-ascii?Q?IkqGMsZAKJVLCKmNW420XifMm7uPXBKaWpbFBvvOEur7fPAwqMm57u8TJ3VS?=
 =?us-ascii?Q?Jde3HXkJ+B1M1fTsHOqKDUnmi2YgK2lsFAhYN9hQ7Andp6wOc0GuGTC/MW7c?=
 =?us-ascii?Q?xUXTJP5Oquuhn0FlvwOSIKhDKAKezIRnXWUNZqAu4pGgVbBvUbhta6vn4IvK?=
 =?us-ascii?Q?UXxSCsqSVhHr6Pgn/1eVmu4dpNN4D3ROVNCc6prUsWnfPCsHJIvKft1eFl7a?=
 =?us-ascii?Q?KtxH8lM2CfBO5wh/cWIH+S8cZ0QSdrcvySOw0ymYY+eNX3DhCMlqtntMzIIc?=
 =?us-ascii?Q?QdSADci35+qB5atSRvRsAkz35ZXe26Te2tnrO4DnahT77MKIxhSh/zmudJXh?=
 =?us-ascii?Q?pe0wZpQyl3ixwL45Cks8CMpsgeIjc3TWcxg5xoJ70XMNUyJ8uZC8+ybj6pwH?=
 =?us-ascii?Q?Lkk1U6ykwJHu1R57oJxz9e9NQBR57NA8s7UMuIJIvXPck+bOjMczDIpRxxXd?=
 =?us-ascii?Q?g3TgG+xiejFuZJ52ufqAXffYMTxxd7viJ9NdER8SO0VvMqvP10Sg1u/PdZyR?=
 =?us-ascii?Q?LdcEJfJJSKsNYmblEnFMz2ju+fW+je5RDRTQb2IBuauX6E2gjRuFOnbUItJM?=
 =?us-ascii?Q?q/rkPjYpJZICGlwNmc12BOrcqjpulQVstj10xzBjINbz9PuvaNB94UGI9+9k?=
 =?us-ascii?Q?YxDifr0T5OVEPFC+hsJzLu1g4X7HRZlqixXGBD8ZTpmTO26GiiCjlWvpmWME?=
 =?us-ascii?Q?T97tY1QLCCT0WgtFKfz1qOHnZUgcIrvEbI5RP4BWMGj78x3VENSTOzUhaUQt?=
 =?us-ascii?Q?YQHRXfGB2zdOjNI1/bvxuw0qR+InsMVBFGiRISsq6AebN5TmWp8nha72KvaU?=
 =?us-ascii?Q?RMedg/4VPA81USQqP37M9+OYkXZY2iwexpPojDtijhnKONBXX0DHsX9VR3rT?=
 =?us-ascii?Q?bB5ZmKu72aZKVtAof0B8F3VsvhbxTqm/kxpk209uWP6G+bVhTlRQMsW4M30i?=
 =?us-ascii?Q?jDOOavshQF4LC88HjmoD7gmxwHaZdFVNiOtV5vY5MTuZIBPhw6taurwiqKkb?=
 =?us-ascii?Q?Nj+veO/p86ummYIa7Bg8QR07YJQXjQhBc6AXjZEQrURYawIThlWBUkM0rKSe?=
 =?us-ascii?Q?Fqv7gS6G42VcA2Oqvoa99+fIBAacZw4GbzITGhCweWXYI99FuajnrFZTCuxY?=
 =?us-ascii?Q?9//+sc/x6FliAQSCrvJgZ/UN?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bab0e806-7f01-49a8-9eae-08d94db62f10
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2021 08:45:12.0359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RuezqrnqjCIEGGa+Vjji9F2wc0a+jfD3WNqflEpwLAgQDzgs/pY6SHq3rPMC/1vlDNNvN6spJMf0gcNJ2IhnGGYrSNd43HFDLTVy+96u5z8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1376
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10053
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 spamscore=0
 mlxscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107230049
X-Proofpoint-ORIG-GUID: Se95rxn7-is9c2yWQ_yQ6J4tv-a-LanK
X-Proofpoint-GUID: Se95rxn7-is9c2yWQ_yQ6J4tv-a-LanK
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6qo8-0007if-7B
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Return -EFAULT if
 copy_from_user() fails
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The copy_from_user() function returns the number of bytes remaining to
be copied but we should return -EFAULT here.

Fixes: 007888f365c9 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/char/ipmi/ssif_bmc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index b15c05622e72..ce8cd8364a3f 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -85,9 +85,8 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
 	if (count > sizeof(struct ssif_msg))
 		return -EINVAL;
 
-	ret = copy_from_user(&msg, buf, count);
-	if (ret)
-		return ret;
+	if (copy_from_user(&msg, buf, count))
+		return -EFAULT;
 
 	if (!msg.len || count < ssif_msg_len(&msg))
 		return -EINVAL;
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
