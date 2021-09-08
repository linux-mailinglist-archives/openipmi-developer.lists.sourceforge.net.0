Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1EF40343F
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Sep 2021 08:28:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mNr4K-00050g-MR; Wed, 08 Sep 2021 06:28:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dan.carpenter@oracle.com>) id 1mNr4I-00050U-Ui
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 06:28:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=; b=AmcxxK1kims6Qk8Xt9NNpEigp9
 bqo/SWpnkvwYlejJziNvy8KZY94OYs9wf3GeXk6w6usWdklmtTN0dkVPgjnZYuLqJLkSFchzKebpd
 p/z3s/WCnQs7xcg/ouLOqP4LK7vFPFWOBrQABSiWUWOc+bSdAtyP09ODynR+lfGTmUb8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=; b=XRvooFCnUl7owJCCZtOt57MKj1
 i9tJLXytMI8g1H9KxXD3+TqgbT5czoe1KdRrFhmeedtjHKo3nqYPLcyjJ/p06HoiN97JkWpXZt4Jq
 obduuCBoIG4IYxzQMKkslkosCAgl1bOGFFX525SQQM0m0Fj+nDjXzIjOQDB8W9WN0zfU=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNr45-0028Bg-Ml
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 06:28:22 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1884A3ep018866; 
 Wed, 8 Sep 2021 06:27:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=;
 b=s/28NjPfyNABmA2dSBp6FAiHx9cML59xrtPD06KixHlo6j5yVwKnXQjR4GXP+wePYTDK
 txDhYGDzSKeeI4+oEsWFDCDkeSN1iyzC6ytAhHM09JE0DSo3nrGSSx4zXL//PyB0/3M2
 ohcH2I1pXsdZxj6wIy1b9WjmKo4UZa9erJMUjPF6w72NHizWtso9cbvE7qBQ3/BZWxIA
 2YA+JsRSri+/h03zAzau/UMgUOHGk8CweN/6stpiV3WgZFxL9hrbcq/KzCeu2MYlwn/L
 CZ37oArGJN048fGSSGhIE/ft2sDPZalGYVIJHYaDlAVrh5qCCA6YFsKWFBH+Nee0vkIc mQ== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2020-01-29;
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=;
 b=Dy/kXjnS48faLmKlu4PZjIFswTSQtsO8ZIoRKMEhqlIRbLo6h6nDu0praaKyLT0Y8Rpy
 3AOojH2HGYjzM+VJ+IN+OTfwgK1Bkb9hpteKp4MQvvgcby4VkonUYfgLNgh9OR+YcBow
 t6Spb9RYx6f9oq6umpxQ9+g6NwIFEcXSwWz8rcTIwlyQJaxLtghT4W9PS097fY46X/GT
 ca5KkIf2jJgrhDY8ChBWAYugC+P/UZBk9+nn6T/XKsTRe51X0C7/cgX/bxAqafsSIDhU
 9RllJ77JnCvda3fL1PhpNJQxsXh/BfUSDgyc649gcstq0QLGkJopEBAYkD2GIXqv77wH 2A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3axd7t9fda-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Sep 2021 06:27:49 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1886AqI4052680;
 Wed, 8 Sep 2021 06:27:48 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 by userp3030.oracle.com with ESMTP id 3axcq0vc1n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Sep 2021 06:27:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cw/Ib7dUETAEiJrktT1Jgx6DQPnfXpj8c4nY75IqOdO1qiOy2bR4qLcwmUS5bPE1Uj0Rt1yzLeLt9cLlqhkuQMqwRrS5XlaRc+4PkgQTq8HbjFiHdhRrpJs9JNxjlZnP/n35pKD+2ZzDus3yKUeebM+62bsCuQ/2hSFVu0z4uzziC0IJo+tpsFu6Lo//8XuqRW/XyJeMmu1egWERDdFuHmAmhK1V9E4JD422Phi+IQjadMVECur5u4V52ROiho+rn1P9BOKXUUabd3UGJEnZQbC1TYwDkXggRaep/m5WHJYN2ubT3/WbCb/yOQpHdoZjVIzIb3zbhlY8rMjhdoBk9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=;
 b=n2HCqK0GDwdIQE+NcNpJWMzrHfG9WtZnGMJMFmBz7cLs+w9Of9jT9hdeFvf8gUU1yJ8CaXAKsNxRxQsDYKhYg4MO77gq8bEnyOaj1EJ5uJFwruK6/C5md7GrJvNhDgkvZgDLV0G2Q3c9wG3yoEP+UWgqUZNOVE/N02R0cCH2zZWOkQbAImzpxOuoBUCwXVE31ZnITwdzPn4Az/9GceGqC8mimO8SsIDQqliLbm5R0hrAjZqSYGmWnSv9cADyArlQvsCiscYVfOcO16XegOpP4+cJ+FnI9vqtd6OufxYN20S5xQb8ARYg8FN4O8+8UTJU2Lugfq742rFMeGtcn+C6yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CKJPDowSZrg1IgeZ7l4jBBC5xtSlx8EhH+tzRVzyO68=;
 b=C49tc5TDrsm9Bu2ay3hw1t0bGThrQotAubC6X36VJVIEo+vB2JNFiYNrhoY3E1WcUFIlPw29kXTcfBKsZlILqokv5R8cEdTV1i0upEJEmgpTuI5K8SIwha3MHSNo5rj1UuP3ItLWNFfFwP44z8ZH07oc+eKdbQ4q/R37wyafB1k=
Authentication-Results: wanadoo.fr; dkim=none (message not signed)
 header.d=none;wanadoo.fr; dmarc=none action=none header.from=oracle.com;
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32) by CY4PR1001MB2263.namprd10.prod.outlook.com
 (2603:10b6:910:3f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Wed, 8 Sep
 2021 06:27:45 +0000
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::95b6:2084:3b1c:27ba]) by CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::95b6:2084:3b1c:27ba%7]) with mapi id 15.20.4500.014; Wed, 8 Sep 2021
 06:27:45 +0000
Date: Wed, 8 Sep 2021 09:27:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <20210908062719.GO1957@kadam>
References: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
Content-Disposition: inline
In-Reply-To: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0033.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::21)
 To CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JN2P275CA0033.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:2::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Wed, 8 Sep 2021 06:27:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d19af84a-0188-44ca-d983-08d97291c4ee
X-MS-TrafficTypeDiagnostic: CY4PR1001MB2263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CY4PR1001MB226306005A2492FDCF6EE7448ED49@CY4PR1001MB2263.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fUGy+2Hh5AuwMYFIarl1TMKh33BguTrpDffmK6+Zil6zRfsVMUYKGvP9ZUGi6BnbQScWdKUV77KzOeulLpo6qWB9tGH42ApczF56/0NcJUx5quQXDrI5Bs6dTlVUFmnzZos2jiIDawdw5EcsKrYSmPmIkI6pq9v1JZIQuVeqmQjw9e4mEG+JC/N0KlfZ/zUt6WptuxxvpbYN1NQmfeJbHXimxCxmuf3eMEgl+UdMPM/HqdL7E4gHHhVa9ncAQir1bXhJrTjPNjYjH6gt86F9t8AS3yHr18v39ywTgQVlpiudCjDNpSWTNVWey2jw1AHawEsPvK5fJatz6QLZLIK/oNS6yR0p/iHRoTSGOWa6ArVT9rHeLW568aZfxPmejzWNOER1NtJNaTZ8pkVnukD9bvmHojZn4HYsyz9+8xZTnJwB4XjU+x/qLvr5a1pMoQkdkdBCgrqS9in9JGXSoZku700CUzj9WLit04XkbTft5kHgKpQq/jvx1KXOqtm6Vr/RJCPhxzjzLoZRiXgtNHzDmfPwe+57EqdHrb/vFryJe6sivjAv0Gz77o0QkA+w8Gs3ZI2LQRMccnP8s7rdQB4CzZ2tAehfPy5c+8J+fCGNVX9ZJL0AwpHR1sWEpCSpuQqNtoJlfRbs+H5szBTLrBHF2HKx1L7SfqbYdkCks2DDhAIKmY4UgcDHupr7M7q1hKxdfN+O7sAEWXCzxl2z/qIdvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1001MB2358.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(316002)(956004)(33716001)(478600001)(26005)(6916009)(2906002)(55016002)(4326008)(1076003)(33656002)(5660300002)(83380400001)(44832011)(66476007)(9686003)(6666004)(66556008)(186003)(86362001)(38350700002)(9576002)(6496006)(38100700002)(8936002)(8676002)(66946007)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rVurFlD6Q/cjlddJ87QccdWPy1gtKumck4ubq1XKZ1/Ufvr0QMtZxeKwxXxu?=
 =?us-ascii?Q?JlytW1Tyy59PyunEDYId70pNmBIilWbILUtIeoMEyynCvMLQ4N7OzRIxKSdm?=
 =?us-ascii?Q?knn5Btnq2LTKg51o6qswz5DHdQ0QIdaoTtOCmTLkTs7EXES87qRi4bk2tU9c?=
 =?us-ascii?Q?oSB8YS0tJHsmrO9IkpASceY1LXYdzORp+NlE62o9IQ6qGBAoNNXF6xi0BxSc?=
 =?us-ascii?Q?1szsmzAYIwbasxE1jdWeVh+mPBsIT8YvFKfwbpxJJX6kMvM/9qayEWkdGXZX?=
 =?us-ascii?Q?dl/ZnXYl+J5XpXf/pKZHRi4wNAqx7tAZhHoAyOaFCSm6yzMNPj7JfV/NxN0X?=
 =?us-ascii?Q?tDgf4h30kUtwSxG7OWAfC9+AewW0Xe4ImEJCJheGhST78QEMLfcFymEujEs3?=
 =?us-ascii?Q?ExeQwGRj35pp158+r/l0OC6h+n7ykXsmsN338oZ6WYZNkbneY5kORtMnsRdj?=
 =?us-ascii?Q?ztESqFG89MzJaxieU742x+cWC9uIX8ZCOH3O/VRBIu9SBFRZHLB1SFK5jhHf?=
 =?us-ascii?Q?SBTSeF0Bk0mgCJlMf040oLwf89HTmOIVzY2qQ7/8IFC7ixgPcwlOIp7FycA6?=
 =?us-ascii?Q?tQnCpre0CQKT2eQNDNrm8xursXfeF0Gh4RrJ/yzQDPf+qd4DGU+BFVeSVlWX?=
 =?us-ascii?Q?B+afpqt6wuIvPMc+/Tm/B0Pg5qol0e9ii7TKwEA3Qk+29xa0iJpJcKEhfgXY?=
 =?us-ascii?Q?Hty6kkBwn6MP5KFjHKJeyH++Lu8oq/rSb+HEO4iU0KmO19BgHFETqSEukatb?=
 =?us-ascii?Q?bqduwAuKSAAT3ZKRx5RLdQJxU+44w9sxa6n+qOsgGKQNo9rZMWTwN2oXx09I?=
 =?us-ascii?Q?xxwIVUOt4eo6X9AHOWXqyLwBJZyrKHcRcay/TdRgTYZnpL2sY2KO8ZoBPQX3?=
 =?us-ascii?Q?m7TZRpKwvu9Y56PkdyPMU8U95mwOXB16SpiEoAZVh25TxzG3L4MUIl0oT8EX?=
 =?us-ascii?Q?5EQrUseKxg0RfqVpS2fCTvf/iPS8BWY/7DuJVDB5kmTasdSDyuBs4k/WPHVo?=
 =?us-ascii?Q?RmWHMtV3BOQCy4iHn4Cgx+1yRJjBZRbKOyTxQ1yt6phym2out2pmYclecRzU?=
 =?us-ascii?Q?KGimdu98qcoG2185ywEjzwROWqRCdGDSz/r0P0ARe5Ql9z1PcTF4acoAf640?=
 =?us-ascii?Q?CZx4SaaN5H+VqpW9SV0eQVU5zd9Y6WUSXoVj03Jbbf20e0/CmVys3+W7G2p1?=
 =?us-ascii?Q?qEpqXHBKXyIVKDBrJHKN5+RtCKk7vRU7ICPTOvdYPeYqM1mpxz9aq/CV1wYa?=
 =?us-ascii?Q?r0pTTsjnqWhmAKcDpItzvs5+Zb4YuLyESy8voUY93UHPeGvdSIJdJETUzb7g?=
 =?us-ascii?Q?6AttJbZNoAJXLRXvnxwZz421?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d19af84a-0188-44ca-d983-08d97291c4ee
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1001MB2358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2021 06:27:45.4115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C00XZ87Lqt5pSE2b9O++Q/wySCesOg97+LNrlZdKlF4EplUmPw69XcEEFPEjNzZKa+lsxnsWFp4iTawd3Ij20+ho6M3A4G/CTVZ9b12o2T0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1001MB2263
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10100
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0
 malwarescore=0 mlxscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109080039
X-Proofpoint-GUID: GCHg7ar5y3i5wj_k-JM_7HUoMxgkX4gz
X-Proofpoint-ORIG-GUID: GCHg7ar5y3i5wj_k-JM_7HUoMxgkX4gz
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 07, 2021 at 11:06:32PM +0200, Christophe JAILLET
 wrote: > In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
 > succeeds, 'port' would be leaking. > > Test each allocation s [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mNr45-0028Bg-Ml
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 07, 2021 at 11:06:32PM +0200, Christophe JAILLET wrote:
> In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
> succeeds, 'port' would be leaking.
> 
> Test each allocation separately to avoid the leak.
> 
> Fixes: 3a3d2f6a4c64 ("ipmi: kcs_bmc: Add serio adaptor")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/char/ipmi/kcs_bmc_serio.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 7948cabde50b..7e2067628a6c 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -73,10 +73,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  	struct serio *port;
>  
>  	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
>  
>  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */

The serio_unregister_port() calls serio_destroy_port() which calls
put_device(&serio->dev).  But I wasn't able to track it further than
that to the actual kfree().

Is there a trick to finding ->release() functions?

regards,
dan carpenter




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
