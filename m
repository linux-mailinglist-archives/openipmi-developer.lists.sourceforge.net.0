Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2A73DBBBB
	for <lists+openipmi-developer@lfdr.de>; Fri, 30 Jul 2021 17:08:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m9U81-0000Gq-Qz; Fri, 30 Jul 2021 15:08:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dan.carpenter@oracle.com>) id 1m9U7m-0000GH-As
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 15:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=; b=CuApEEK6bhblZDq+w4qB3jPZ2g
 cp/LMJBCBzHC4fZ6skTG94W5vZvppD7Ja8aELgw4rmJyOhhnn7FBUcRtthib4ZjIWnTRBLxRu9tzd
 cryOqN38rRRHz43r8QWOlkEWnVgEqugE9+lqrfbxV41aOiN2ZHTaalbxfnqXvsS7Q2QM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=; b=D
 4zVESn5b5FuxSOTWqKqhukqG1Jr+Bl9vh1u8Yi1kHk79XA5PV6jFZ9Y6Y2hx5VD311BUZIfO0q1QR
 0SIiCG2pq6kqM+ONCkcYCWOjk2M9JAp2WGH6prtnDmqgTdhM+VOUU7/tK2JSCdGShbvsYUZk+XGhp
 4LzO8vmn3kdf67dA=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m9U7b-007sZI-Sb
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 15:08:27 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16UF6Z81014704; Fri, 30 Jul 2021 15:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=;
 b=TaiMMrH81jUwcdkcAMOAYdkJVONqcgeBjk68DzBvrUoc3bzrJc6AxVyuGKes7w/IkWRL
 BoIB5SypXYbhqip/N4UMLlYMLBAzu9zC9xsfliKunCE3wESLlRK7vEt6OtXJQBv+CVvB
 cflvCiMOOfp4EiT6wPQ6luPM7+rNLOJwrqZWEpp2CDyEmWkTMi0PbyvkSk8pDpao6xdE
 E3xq+eMLNNsNrf0esWyEXsfMUJFQziWX7bMD8tMwhqEfTRVJsXmt6jHELQfxoqE03aAh
 cWAAHKUZuCfmEvILRtqj6qouWak9W5A+Cf9VrgSCAWTd3rFsh+2++zlnelbWJnhbw7aO 9A== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2020-01-29;
 bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=;
 b=gQ33cEqOkBBYlqGhIu03q9vnr4emr7qlmtS4awUwSin4+ZpFEo8tqI0Xkw7WUC8+wue0
 k+lcI6UiJkazJEdNSIjYRSLA4ttg5ogIWhbf5/Oqsz/VACaeWcjKVMIwvZkhFK/nSSzY
 iX7tpqyQ+3I0VEIi5xUxD7ckBVgzKBMONe31VxZQLpuanu69W0aw7sNWSyuvNg5x3489
 bWCxU16YfoFwg2bvMxYtpJ1+fRgPMFMeIopupN+XrtEYNu5TzWKWzKXYZAMerncD4EG/
 lgrsqX6IAYbgtpZG2VXCRXR7a+qbEgUlsYR09cIOpOPD7NksDErAbLuTSDUN3Y4RKvNX MQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a488d9eu8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 30 Jul 2021 15:08:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16UF162p154239;
 Fri, 30 Jul 2021 15:08:14 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam07lp2048.outbound.protection.outlook.com [104.47.56.48])
 by userp3030.oracle.com with ESMTP id 3a2359pscy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 30 Jul 2021 15:08:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3cRxMShl6atd4BgKL2kYFGUBfwMnMpvP9pFm7xx7Kc0z7Utq6aucdT1/IxT0mVonYDnMHSowygT9PXZfpAwOPa3l5uHx9pbdG500NgqQDcxDaw5bUYSi56ncyCjspJvUWEzvThNoGl1Ehc0LOtjntLvEBTPnCS7LrMKoCzr41uaU1hApBBx8L+6OK+YokVpUXWVWmsscVKR1SbMuRoQAgpdpvEOmMClLnfZ6qakZZp2sbTPKEVdQD3WD23qV6/QlaUvKYSkvZ35SRxZwPbagxI4tSJpCg7IwcK7Mk+h0gEbp7ZoNQzQ3L1Z1qNdo9bZ14r/iQeeIapZDhCmkqY8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=;
 b=RBGicB+A0EgmeCw7A7EiPR98Jk9oyS89MKUp9iR4QGDG7Sw7ezOyAbX9/3TwdTmG5TBSnE2M0navZsTE7HQCCXpUg2swTa70PgKA8dH+n3P8qo8gN82+zbFM/VeKZwSWGM1QkEhTyArsr4wm0BpbSf0/G/VLqLX8BlJXty0+LAXLwMsju8sqbXSzhuwRNezNyMbMwsZ5BE7nBEO/qqH9R/V72npqLVlKrsurYK2sVazkGnTRI3+0q2Y2BS6qeW2hzqIQcTYOjYpDKgFLSnixjkIw5WoGlZRIjiqYqw6UgNf6Ne2tgAKrErPrssf43c+wwhuW1ZMIrehHZ4QMEPdTOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HOebfcjCw73Ig6PfJ2I5uXXMgcBwkfCgl6lH6pfP95U=;
 b=rr5j5IWYmQkDrEdjZ2c7ZNqcjLZ0Nrbe//tVcZqTWh1VEVwmMAlSzJbO8zp8r/senJ0ox89wr9r2LF8NXSKdJPayK/vy0qnar9B1VdW2ZawLUX2d74B3UGBfJVYuO3h/pwYymrLZwA+B01V85At21JPQ1um5cf7F1odFdkMhLhc=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none header.from=oracle.com;
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32) by CY4PR10MB1733.namprd10.prod.outlook.com
 (2603:10b6:910:10::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.17; Fri, 30 Jul
 2021 15:08:12 +0000
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::856c:c91e:aaf8:11d]) by CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::856c:c91e:aaf8:11d%3]) with mapi id 15.20.4373.022; Fri, 30 Jul 2021
 15:08:12 +0000
Date: Fri, 30 Jul 2021 18:08:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210730150801.GA1074@kili>
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: LO2P123CA0028.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::16)
 To CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kili (102.222.70.252) by LO2P123CA0028.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Fri, 30 Jul 2021 15:08:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b655ec9-c88d-4f40-e23c-08d9536bd946
X-MS-TrafficTypeDiagnostic: CY4PR10MB1733:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CY4PR10MB1733AB09A014491FE429DE228EEC9@CY4PR10MB1733.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z20iKx8FKXOIsBRpDaeT9ejMcxFgz1sHkTV44KJs3af+77ttEYUoe84PdrB9uTh1rc/YQjNuu4XbWP1YKRwxs9awvf75EQg697chpo59UXi9+/F1vFwyC+nGKm9XJfZt04RTkRfRKkvRqkq8dOs6n4My+HRGHSmzJz3RdgHrjyn2eo3zqxMi6MhQSLTnrRqpfNz2+BPhqcg2udXPFZ9UNmNYscEp83lsZ02QtUNyurlHQ3kMYIFb/RXwpe5/Wy3hSkWkxb3HcevbsEJgNq6mkI3lOSGTXnXo+Ibm1KqAa/PiYMoZJ6e+wBOB7IL0Rl5JHlItRpDcsgJcAtunYBkuMLyhdD6nlTtNQN/i62oTxuiNN3xTiR5tp1UI/w1S43dIO3lc4b0w22qt6frvTdxJKfJw1Ldu7jZq7Xea04E2+Vqx7tJHHYRiRgUkWNSudtW7cwh5FPBb1sVtmBFZzLqAD8xywWs/hj8C9b8LxgwYHcwm0Jw09GzZZ7nDPNZHpeOgo3Qet1ITBDTEG+EPot3yuj0NQgmNDwViM1Fwqf7cjafxpClSt1vOE2B/A+LiXh+R772NT2YoF3zZjXJkSsRO0VAB7AIYOsibZZzwPt/vMqH2roPdcN1IRjRuZodisBL6xtbzpJxw3gUwiywsd1J1hMVOAzBD8p5KEklVl1BZpmMFQNFjGNHm2LMkR7x4+llerFOOtEPovkUeZ0Msw/YsWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1001MB2358.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(376002)(366004)(396003)(346002)(2906002)(52116002)(8676002)(83380400001)(6496006)(4744005)(38100700002)(5660300002)(9686003)(38350700002)(55016002)(8936002)(9576002)(478600001)(33656002)(86362001)(4326008)(66946007)(33716001)(956004)(66556008)(6666004)(66476007)(6916009)(186003)(26005)(316002)(44832011)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z3dfuyfZ6x10HJP/v8FBO5uKkTWr85hnYrxoWHQrEMs2i+86Uq/U464BfCYW?=
 =?us-ascii?Q?6PCdTjIK8/DEbSrMrhfKr1MtrMcCKJ5qmkUVVTGeEwM6F9YhNGvpwwpInKTe?=
 =?us-ascii?Q?YFDFOjXFUUOwy+AJz0B3iuTN5H2OSg3rFj3vnwt23W0PrVA2bjZn9nliN3VS?=
 =?us-ascii?Q?QdMpGk+mvIb0E/6ZpfGGtDqsEsMv44VpDMrtk9eXVqRRI8CACSaD70jLKlHo?=
 =?us-ascii?Q?5Vz2C6FnwHWUnZtQbceuJdEutoLCH5wz3NxFdfZSyYpjLC2bpzzoshNN1m5L?=
 =?us-ascii?Q?lj/pHdbl5yPmCZNySGe3dSzjeCK0cdNqxo4Xh3l6fLqupUeS5QsPBAKMAPsJ?=
 =?us-ascii?Q?Hop5mW5tmAX++xF6ibhN8EkDxrd7cnCaNng4eUC3WJ2vj/IeWZW+PWBVHjyC?=
 =?us-ascii?Q?nGt941H4hQUjxxCSx69knNZ+pTCTY7HBaF4rolf6oGNfhoeMulURyj5Vqkxb?=
 =?us-ascii?Q?Exm2Zh0POpaUMv8DhdE4LfxvLV3oWrx3JF9wUccYfef/LeZJZpYSpRJyyyhH?=
 =?us-ascii?Q?8m9pOEoLCgOW/58cAcYtHYwJvcMJbJ9jyjQoWidYr7Ql0/KADWgL2yha3Bc+?=
 =?us-ascii?Q?v1zcKNJwNv/gG9WVOXinmcXpMQ4wjDgMPxoV17GB4KEj7QlpT6YAF0RoUTHf?=
 =?us-ascii?Q?LKTxqZfiQK7whQ9m+rKxKPC3A28vlR6c0m5Su1w/5ZUgrOQlTfliwhTKrOcD?=
 =?us-ascii?Q?XasLXI5as/EKALizdcQ92iyokI80igx6X1SCZmmQD/3P1dcWn1YvTBZoJzJm?=
 =?us-ascii?Q?KJD4Xf5zvIxXFJ2RJxGTx80OzW4eayVzCKcYDGjzlguOTVMtvyDOJrlqPKkE?=
 =?us-ascii?Q?oltCLcCifTwZ4Wi8oAyWuww3H2QJTqA4z9QeDWmTCou+RgqvvwSk1CzAeGx7?=
 =?us-ascii?Q?BGcVpbl9NqQrNFIRf3qPdifLNW2D6piKlLe+DpdrcOzIwkFMgTUAS4D5VyZp?=
 =?us-ascii?Q?oug01TvJpqWpPtohVRDZ44nycp30FLJbxC5PdEm7WbnRpIXnk+N9NfIAEuKB?=
 =?us-ascii?Q?JUV5GboRBMPcXy3I2r/95006lQ1e04y5GUqqGt93nVVWqfD5E5l2PN8c6dbf?=
 =?us-ascii?Q?P5V8l/ThYLzSslZI+WQY3yHRslpu19By2NDVsiuUL0e+Xqm5tR5SLRBYKHlE?=
 =?us-ascii?Q?IZoSJ8K53fnKTWO5ik3urzojOq0aiYsRJQC+M0dn5j13PZfLcH8+/PnAHQDR?=
 =?us-ascii?Q?bJwwjiKNCDHGkOVe5RY6QXD/r7mCS+J+k/hOJBKZvevPFE1qcAW1XvXj5G99?=
 =?us-ascii?Q?xMVqkIh7IbP2f625O/1EVmPpcgPRODsSXYo3MfGfXyQB45ZRBo/Fv8kJDszZ?=
 =?us-ascii?Q?L8q4tV24IcWA0ZBy3rDtA6bJ?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b655ec9-c88d-4f40-e23c-08d9536bd946
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1001MB2358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2021 15:08:12.4271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jZPjPMISwDJnc3mrwuYd35GYxQbaFPj4modGm8XcKC29N0Br9mn1TmzR64mPJOVueLr/mfBgw7qYO0tM9tcRXjRVppCfz+Kc1tWGfYifUng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1733
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10061
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 suspectscore=0 phishscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107300099
X-Proofpoint-GUID: 10D4K-yEsQnl99m5dxKHP_n1qNrMWmYa
X-Proofpoint-ORIG-GUID: 10D4K-yEsQnl99m5dxKHP_n1qNrMWmYa
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.177.32 listed in bl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m9U7b-007sZI-Sb
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Uninitialized return
 in ssif_bmc_write()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I accidentally introduced a bug in my previous patch.  The "ret"
variable needs to be initialized to prevent returning uninitialized
data.

Fixes: f9714eb04364 ("ipmi: ssif_bmc: Return -EFAULT if copy_from_user() fails")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
Sorry!

 drivers/char/ipmi/ssif_bmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index ce8cd8364a3f..acdb1d9cb5c0 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -80,7 +80,7 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
 	struct ssif_bmc_ctx *ssif_bmc = to_ssif_bmc(file);
 	struct ssif_msg msg;
 	unsigned long flags;
-	ssize_t ret;
+	ssize_t ret = 0;
 
 	if (count > sizeof(struct ssif_msg))
 		return -EINVAL;
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
