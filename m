Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120CA03658
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Jan 2025 04:48:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tV0Ze-0007LC-Nx;
	Tue, 07 Jan 2025 03:48:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1tV0Zd-0007L6-EQ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 03:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wrOn5KDjgJmty2lGHl3TlKiAYTQGi8Kvu9mookrotbA=; b=P4+NlY5ru99qlZkHufpWPmm3/1
 hFWYyLn+TliJpg/Wo9i9UCllJwbl0Oy60ycsB6402ZcOOsHtrqruL1dsAEpgaDrHeWUFILwHR/Ole
 7Wx/cDvKjXhyKwJXAiPeVDXiTFIMeZ7qa4NFuGZ6Dh48+kSwAhW7z0EkEBMNUB/7nOFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wrOn5KDjgJmty2lGHl3TlKiAYTQGi8Kvu9mookrotbA=; b=Z
 Oh+BHtBqVsGHoT/K/f9V2NufLQRcKefVKA2t2XmAuc/VWBoPuSqFAV+AuxJ9+qp2MeDXIrdXDSXA6
 nXhRQFCqtisDKfQMDR1BzxG/0xE4qPnZDJgC+v5yS8dQKxO+xOXxl4sMDp4x3pmiLsHha5o1IV7QC
 +KiTX2iBB84+QumE=;
Received: from mail-bn8nam04on2107.outbound.protection.outlook.com
 ([40.107.100.107] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tV0Za-0004bf-Ro for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 03:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kcrxmHNFf38QfhpS53s80bj6QCXznuus3PpWDv5l2z10JrChcm/JCGyNbiT4+BltaQSdIW2UFb7YoyWLDywiukpzV1yskUUAWEsgDrxcdK7CugqpI5A1FngZO7s97Q3h7e+UexLB9L+DNKpQW7MbgDZCMUZxrcU6T7tQaIcKMpx9Tc8AIP+7lw1p519qGUF+kMgO7M32AiDHgRF3GuJXXS7h5L4TyvDVxGrWdurlETQo3IGTiYB08+2Yvaxkq6Hsd4M+pglKvly51S6NZ/faRV7qXfgmq73AFNREhX49TbuVbKsxvOvTMCvANsWyuwKN6Cbn4no53QnRKUhouUFD8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrOn5KDjgJmty2lGHl3TlKiAYTQGi8Kvu9mookrotbA=;
 b=CHqjC06a97I4Yo5rtwGEKa04/XLrR1VSyRvtY3dY0TGEg1qGLuqpDozcwsY/g+LzE6PEgWvIGhif6uHywHY4lIzO0yx8CKMExhNaEaw7I3Q6AlbAvNVHgpNl8RlOGIPWFRWPqw1G/MCg2Sh3/kAq5qFtd88dSs1TMKQxkaohYGbuwg3HT99uk9siWSXhKBYuSi9dmiMH4vX7Pb6pxrqYcbdavgNQtvkg6IW1W3Kp2TVclbjZ3GfG0qdG8KfpfQE1b4l9uTV/18LLKzF1UF1Tbx2a+ePvYv54jIR3wPxwNJZbgg9EvO+3357AB9DFeZtCngnMr9FwxvS7TLa5zYRZKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wrOn5KDjgJmty2lGHl3TlKiAYTQGi8Kvu9mookrotbA=;
 b=lE3uAhqsZ50Rkxkh+qNPJ2SlEimYCaoKUiJwJ6zNLwmE2VONb0v0VUnUG2OubhmcElHEK80G0Y3osQxZSo+jOeb6260Hpm8YsVZObCZb4HoiANvWitkqEDOvdiIDmFN8qOhPnZKWXpPxQMlAqNZr1Lv+P1TIn0H0B0O+SSLh3+c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ2PR01MB8193.prod.exchangelabs.com (2603:10b6:a03:4f6::15) by
 CO1PR01MB6792.prod.exchangelabs.com (2603:10b6:303:d5::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.10; Tue, 7 Jan 2025 03:47:53 +0000
Received: from SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d]) by SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d%4]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 03:47:53 +0000
To: minyard@acm.org,
	Cosmo Chou <chou.cosmo@gmail.com>
Date: Tue,  7 Jan 2025 10:47:34 +0700
Message-Id: <20250107034734.1842247-1-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
X-ClientProxiedBy: SI2PR01CA0049.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::13) To SJ2PR01MB8193.prod.exchangelabs.com
 (2603:10b6:a03:4f6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR01MB8193:EE_|CO1PR01MB6792:EE_
X-MS-Office365-Filtering-Correlation-Id: 21da8728-3684-498c-0366-08dd2ece1036
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|52116014|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?z7lgJ0n0m/75eQkwT3tkvpkYejjrbLi5D6mu6GpuRPXr70ZyTpGCtudBVhvt?=
 =?us-ascii?Q?LpwSXdlN34UiuDETwIDWrosk0WVRVX3i+aIMgF7Ti5JV0Dk9tqM+WUaEsU03?=
 =?us-ascii?Q?EDjZsTme6wTSU9GBQ12CLsIhslLsaNEEE6CZxdYht8Sm5T+wtxSe0aij0B+v?=
 =?us-ascii?Q?Vcb4jt925styPe0Zh/RNGtvCzb9H9NXt49L5uCf6/iDJzkdaM//y0zO8oY3v?=
 =?us-ascii?Q?RVL5aaJ5TPmvwmyGVubRt1bn7HFowrghXaCbzGPzcfvBQiMcNFELObiqpPFe?=
 =?us-ascii?Q?3Rg89t0Q1po8zBkyNAC7U6Q5VM4PIB8ZrfnmztuLpKwOSaWiMhs9WQXF0ZYG?=
 =?us-ascii?Q?EfnzS+eUh+O5WgT79TooqKvZca9AS9tF3MLUxWZI0D6CrZASd3QHPpZ9SGE/?=
 =?us-ascii?Q?xyuDtyNzzTkkPiX2Hgb7fOyFeZVkjv1F51ZP4xcSdx9k3U/tIe1VJJ5rXC1c?=
 =?us-ascii?Q?FkbQtNuj4EmB5QIaE1ceK2mQDEjmtNJrX8kvaBh9I/6xtRsq/AI0TUDQaU8E?=
 =?us-ascii?Q?rk9neLGVugEt/Fv9Dwv2KsLQjlDfbCaJFqiGzNcafwCLQVgKIujtS2nJdzYY?=
 =?us-ascii?Q?lxigDg3Nr3bXLdCVhz0/PXtTbJ0IJex/KpcSyXfLfURl1Edhp7lGqG9cRClz?=
 =?us-ascii?Q?FsY9JTxhpfe0Cj4H2Is0VejCZUZKL/wipraANyYdSsi/cVJ/DbOjKpz9o7vA?=
 =?us-ascii?Q?t9Co+pf/i2zxHMtOJhXxv8sEMT9i/oDzLmp8iykBpoWUh8DLmNNwNH4u7DTo?=
 =?us-ascii?Q?cUXE0WMJftRwA5m3psdP67InrXwTZ5KkyM7+LelO5N9PWms06exVqib6CGMz?=
 =?us-ascii?Q?KBItLJh1uGdH7YDDZwJslc4RrptOPwoCaiTDykoZEA3bKdvfKrfK6/yK+hl+?=
 =?us-ascii?Q?hyZ9zdsfIg+9i3WkhRgqhO1Oa6+kSc4Smu8n0RvPg6axpYhfinFAqzgCa+CN?=
 =?us-ascii?Q?JMv+aySWVhKaUSI9B2Y4yfUZeudx41DlWdh2MgnzNXeyAaS9TfT2lrRoy4Rf?=
 =?us-ascii?Q?kTY6KW3sa/iM303tPXvWr97iRiLXEiKf/X6QgkVD47BE8Z9iE4v+rPRYIMiG?=
 =?us-ascii?Q?MnH0p283DuKar0h4yJJ5Muj5BPTa6gQ7aJcaBHzgA7Xb+YwurcX5BgelVyGL?=
 =?us-ascii?Q?534P6/8gVbKkjBYXa4PUNCaaUNVvlxc885cq1BMQHeW5TuKHe9Aiqvm8tMod?=
 =?us-ascii?Q?GKfQtwXDRlQdoujbLHGjl4ARZ2D39QFRzGDRh3rw0yQ6bxe03Q5fSKLrd0J9?=
 =?us-ascii?Q?nXA5DC3J8vpoxKglvJ3YeGfK0IdO26sWm/GrTYcI4EMDSP+SuY2t5se07z9i?=
 =?us-ascii?Q?dNMbJA76CRWmm6WPhygPSkEQ4K5ehxmXi9hM6ziK6KaxJOSt+1xWWszWYakA?=
 =?us-ascii?Q?y42pJLCHUe+Ch3JIPv07R6ChteijhmKehjDwObT6fUwnV/Ejx73dHjjVbCn+?=
 =?us-ascii?Q?QokCSPsZxjKs1INTuaYdwocmZAWKp9Vd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR01MB8193.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(52116014)(38350700014); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pYiHQK/4o4YpWII8msV4/LimKbwGI0ujPT/bI6lM67Xpy8aGWU1ixd/uVx9w?=
 =?us-ascii?Q?8ogGxicsh65TMV5UsWLUEhXCyLNQP32meYB6Tq+prWQT5zlFPRAOF6fRZGKZ?=
 =?us-ascii?Q?2oFdNSQFRaB4Q9N6s3hSA60UdAsq5pNHHTPnCPznMRIaoEdyi0IkUrCdibzI?=
 =?us-ascii?Q?5ulwU7hxBtOf3wB0/0BNXJLcQCP0D6rHN/C2wvXlRi8cKm53gXKnOnzCWEpU?=
 =?us-ascii?Q?bjlJ6OVTKx3XhnE9Xfp2EWVzarpKCGgs47GWjz1ntH0YV7Cb9Y1ZBCtNWbeg?=
 =?us-ascii?Q?WeITX3e55UjhvywtDjKOFN5QwjYGegQxNTSkUTjnxI4nW+5B4abwyxzuTP2C?=
 =?us-ascii?Q?cFkDj9WiHxthxqQ5qpnLGE5o60C218kSp8VrU8wBSi3nT1u550HWyLZG1QeE?=
 =?us-ascii?Q?ICV80U42cdQnckxJcFLJSIkFTipGei3AILCEyOuLC3lIFAxyPW0BzGqyvtK6?=
 =?us-ascii?Q?It2IyXIDo1mhShOqrLHswF/wHsGFrhTO8W8209gxcL3KAfPwXx5jW27du20y?=
 =?us-ascii?Q?1OPyMPxeRli+VNy9r7reDlCF2erDzwrNg122uI4FKLG8U0cxFFA9FUNZS3/3?=
 =?us-ascii?Q?/MmRTf+jFz9Lk8a3kR1zjcIhpivDehrYuiGKj4mx/Mv2C90WdeGi+QsT/rpR?=
 =?us-ascii?Q?7QUd1M4KezVsvQkEjjqRASXKfn5/u8wDGjq0T7xLpIl8uruXt1eLwVbdfFiE?=
 =?us-ascii?Q?TEHE6RPvA+LDmCghr1MT2lz2R//neC3THVu8fCW61E7z33wpNLtPJhhrjXR4?=
 =?us-ascii?Q?7+oxYqNYXG6gVTZfKZvv6LhifuKOlS5ELtftYizNxv57Re+Vllz2kRzBz0sc?=
 =?us-ascii?Q?VXTWUE8rWgMecw00o6X5ZBYvViDQeBEmQ3JKIa29BswfOdIz1ChefnAhlXmf?=
 =?us-ascii?Q?xnCgiUEtxAEXZW7NFocRlgkIEHXfe1q6zNYWzDGUTzvHP2+r5yRAJqi8zGIq?=
 =?us-ascii?Q?C5TzEQdzcYT7MV4Gg161FqMfjaO4yjCoZ/WiuxP6JC+G4fF7WAyDrtEjRae0?=
 =?us-ascii?Q?TBq4t386F1wlYBxMac44q2zidPfOyzx6SAHEOvEI6vWVR5QqJMyiFFPcILWF?=
 =?us-ascii?Q?lCo/JZG/VFHng8rImmIt2MNCqzGj3l7QJu4Rzd5wOps31V20C7EDN9eoMFXe?=
 =?us-ascii?Q?0MeBjfaNzQukkxw+J0hfmsCUrImxXR3bn1Psz4XBm6HRGqAHpzAE7gMZy51l?=
 =?us-ascii?Q?lkluERwLboeGnB9D0WNqI7ENiV68FN4zZzoS94BZwneaFwVaYr1rq+zKat8Q?=
 =?us-ascii?Q?4+ZlORgz08fSmVWEbAj+YciftcJkV4wD8tVkJk8dpElEKOlShDDN2MFRm8kX?=
 =?us-ascii?Q?PMO6UW+nlTmi0kYivGYflw5cRLjizJWd48D/nuzlwi5eVwvRxMLW8acPmD6z?=
 =?us-ascii?Q?BoEyWDbHAtg0C7ME9xa2ENR+uccg8dXSfLsbQz5DCAvG4vCsilhTNv3XqYzk?=
 =?us-ascii?Q?64xhUpCTGE3Fqtg7KuCVs/va1mYzd5TV3GD3hkgNMACarwRkcFj8uIU76x6O?=
 =?us-ascii?Q?mTrrnccRZzxg1WbjYH64UAveL/JNg9TJdVp54UxTPF1jjPemKNWKfG41K39q?=
 =?us-ascii?Q?GVIsiQu3WLe+fcG+ztHKzhLgrTVHIqtgNDgSwio49oxgiChO4vXtsb+IDJrV?=
 =?us-ascii?Q?YCkUNemy6Z1O5uSP88hA/38=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21da8728-3684-498c-0366-08dd2ece1036
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8193.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 03:47:52.9060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6IwBsY51l/PhG9y29IaGEus/4OQR3Ac7eML6V64CMEKvnapqqYUPa0UwDx87Q3OoVJXHbT4r9fyyJ1Q07ba17wUv9r1PZYzRPhpzUK6cQ68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6792
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Cosmo found that when there is a new request comes in while
 BMC is ready for a response, the complete_response(), which is called to
 complete the pending response, would accidentally clear out that ne [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.100.107 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.100.107 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.100.107 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.100.107 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tV0Za-0004bf-Ro
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Fix new request loss
 when bmc ready for a response
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: potin.lai@quantatw.com, linux-kernel@vger.kernel.org,
 cosmo.chou@quantatw.com, Quan Nguyen <quan@os.amperecomputing.com>,
 patches@amperecomputing.com, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cosmo found that when there is a new request comes in while BMC is
ready for a response, the complete_response(), which is called to
complete the pending response, would accidentally clear out that new
request and force ssif_bmc to move back to abort state again.

This commit is to address that issue.

Link: https://lore.kernel.org/lkml/20250101165431.2113407-1-chou.cosmo@gmail.com/
Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Found-by: Cosmo Chou <chou.cosmo@gmail.com>
Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
 drivers/char/ipmi/ssif_bmc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index a14fafc583d4..310f17dd9511 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -292,7 +292,6 @@ static void complete_response(struct ssif_bmc_ctx *ssif_bmc)
 	ssif_bmc->nbytes_processed = 0;
 	ssif_bmc->remain_len = 0;
 	ssif_bmc->busy = false;
-	memset(&ssif_bmc->part_buf, 0, sizeof(struct ssif_part_buffer));
 	wake_up_all(&ssif_bmc->wait_queue);
 }
 
@@ -744,9 +743,11 @@ static void on_stop_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 			ssif_bmc->aborting = true;
 		}
 	} else if (ssif_bmc->state == SSIF_RES_SENDING) {
-		if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num == 0xFF)
+		if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num == 0xFF) {
+			memset(&ssif_bmc->part_buf, 0, sizeof(struct ssif_part_buffer));
 			/* Invalidate response buffer to denote it is sent */
 			complete_response(ssif_bmc);
+		}
 		ssif_bmc->state = SSIF_READY;
 	}
 
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
