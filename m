Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B840350AEE1
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Apr 2022 06:17:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhkjX-00027K-8q; Fri, 22 Apr 2022 04:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1nhkjT-000277-8O
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 04:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJB/t3rzHtUbPTWs4mQw50/35OQSQMleb7HVrITupwY=; b=SXrtbnESjhfIgAKx6NZT6KC1vb
 jhcDuzU3qgerEAmZ0QbXm3awewoRpNcxK0sT3Qc5j8MPHB+n7N/HmTPIOeKsqcG3xRSta0TXlic8f
 7q2YJU9e0g1wUb50XERG04jJSmN3d6Of6wYLJSxu4olbB3yQsXOHl7axF+To+KD6VFhw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hJB/t3rzHtUbPTWs4mQw50/35OQSQMleb7HVrITupwY=; b=N84ijmrOwGF8ont+0wM6W9GVz+
 xzlRztKHNkPtGY7A9nDSY7oKPAqNXJxwetVZ5extGoTmLfLfb+qXqJGfvpDFobrd6FI9+HDmGRQCL
 /C9tPrqAO1koGRTFyXu5T5FkCZs89pswNNGBd1NPUPIoKblcJMoonot4xj2W2nF07znk=;
Received: from mail-dm6nam12on2103.outbound.protection.outlook.com
 ([40.107.243.103] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhkjQ-0001fi-T5
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Apr 2022 04:17:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHgA38zSZej/eHXubK2HKhMb2AHgOzYcXNSdtsjdTIa2yqrWWdRWEKXnSlQxncWGgCByth7IdmFNETWIF7yiJpQ00jrVcoqot3y1hsiL+6C1V+kOi8SQD9b8DreqmIKpufGYqv2i+kgKXEALGWhBTAQMGNMySUAkZHjy4FPQFGQacu3wm82h5Sd8Dvglc31eiZHQuQPvfpqdkgczE1v/ljxPcE5q4V/m5jDPI9SND+25xetrixFsUTyLAXS1WDIH0QzwmG5o6cH8yCch159afHXeZELixU51qqnu1Fa9GrIqEeh3rYd/3pAZGbNFTXQnnpBCQCgB22UNxqQaKBiT+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJB/t3rzHtUbPTWs4mQw50/35OQSQMleb7HVrITupwY=;
 b=be/bH1NPAlKZRSLfJ+8FZZQxToCtX0e++FE1Puf9ky28RrheeyUtg7DIQqx9d7njhkEUYTsOLrZ/1bSwv/yQynI1pIp6eL58SnK2uxZg3lezwDgv9yB+0wIhKZtjui3P1o8YoPTOvhsFf7YP+aWyox23ZGWMOh+dJBud+KriPCNRtpzT0wVS36L9sLT5prgfjQoFG8aQEGcNXQhKj4nbv/KEw5JcgvHHlKk981EQNmadJJIaPlyC8Af27wJcjGerb737Pz6U06PLwhAVt/twxphFvhsKH5d6xntoajJXBsfDj3abl7X+mhVH8nk47nduk3kSwzisEGy7y5R8qUQ03g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJB/t3rzHtUbPTWs4mQw50/35OQSQMleb7HVrITupwY=;
 b=upUPpAdEVPoLZj91+E6FjbGouOgoKOJ6M7Ak57jjFVw9OwOapCC+SK5ZFiHf/HE3qNhADE1i1NHQ0A8cYLVjDYvAN2Fa5ksHU2vkB6WfLekhcH3MxLQN6NEJlZV7n844P6mGXjwSie/L5ArSR12x4WwyDzeZKQp7CZFnRYdhTwM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 BN6PR01MB2644.prod.exchangelabs.com (2603:10b6:404:d0::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.13; Fri, 22 Apr 2022 04:17:11 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::319b:4612:e6f4:f22c]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::319b:4612:e6f4:f22c%3]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 04:17:11 +0000
Message-ID: <153da61e-dc9d-467e-221c-b48d6f54c6c2@os.amperecomputing.com>
Date: Fri, 22 Apr 2022 11:16:59 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.8.0
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-3-quan@os.amperecomputing.com>
In-Reply-To: <20220422040803.2524940-3-quan@os.amperecomputing.com>
X-ClientProxiedBy: SI2PR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:4:197::6) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1399738f-0e73-4edc-3aba-08da2416f921
X-MS-TrafficTypeDiagnostic: BN6PR01MB2644:EE_
X-Microsoft-Antispam-PRVS: <BN6PR01MB2644F97D85D8DEF4715A8873F2F79@BN6PR01MB2644.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CRavmAsP3CEzrGr6vzSr821ydXDMH2mB6q/Pe37iDjCBb7vhL/xDQyxcozNWQpr0c2WfKoMZGT9qEhMcoIMYiUjGMOd0LzraiHlNo4gAvp7igCDQd0b1whPDB2T0FedEwvTnI8D+O2F4wWiH7NrbIX6CsbdpII4qr+rhbC8gVSz0BX1kJ/XPmGLnM+6Szpibi0QXuEbkJdWhOJr0gTxP7gK79AXQlcwW06VoxHbIgxHaX1XI8IBjTiCM5RvkpjWd/cwd9z3rcG4nn66mYg+B5y2YfeUC4taI0waZ8rLzLXJ6jH1kr+xzYIt4dvK47DVxyBBwNoWpynmUQR0ulBjR7ymXsdj6LKUOjvxd1pCnS77bMUHgHqwwbztRC8bhxN0e3eRO6bskqGmbBgxx20nsdr1OgxL8lFLPUSzx914suMeFg4mb3jGm0GuInrwnZ043zAWVVhHRru5L7lVeGbAJKABUOrIK8sJu9kdFRa2HHWZGO5wZN/g91wWxvtfWawCvnuFDoHR/CPVNdakdi+yHBQM88WZfRufEjf6TEmLU65SFThE2ETWIkvo7skaZdzU5zhwJmRMNA2hYuVQ4N9p/JQNjp6yo+EFfkKax42ZSDT3go3WkND9Wg2SAIeY3YFqIRiBbWpVMqb/RmmR1vdxWT6ejl3p+Q6iXABD1Y9T+oZKiCl6/PtSJXWwb1/rE2kAXgKtVhAqE1KuDrh25LSJQut+2d716RHe/Z3cW+9oCdx6SmMuitCfJ07djU61Co9EPK/D3CJAXkqkzH6iO6uQV/jWD7vwXc8R4T1BttyJzm2LSDRgD4xsktZeH50PASeLKU6IARaFYgDSLaYgt0ZVDPqGwy6AmNcDScMz/G5k8VVvMQLP7laAK/GFRnBkdBFF/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66476007)(31696002)(2906002)(86362001)(316002)(6486002)(52116002)(6666004)(8936002)(508600001)(38350700002)(110136005)(6512007)(83380400001)(54906003)(66556008)(966005)(107886003)(4326008)(53546011)(921005)(6506007)(31686004)(5660300002)(186003)(26005)(2616005)(66946007)(38100700002)(8676002)(7416002)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0hDVTg3Q05uS2hBR2NsY0NkV3FSMTZKRk8vRVFBOTRvSTJVQzl0Y3ViRFlz?=
 =?utf-8?B?MmYraHRFS3lmdHhVQXVIaGFpMUE3NHJidVFZeG8rS2ttR2E5bjJ6eWxob2h0?=
 =?utf-8?B?RzVVSXhFTWpkZHFlSXRTSWF1VnEraTBHQlhZOVBySHFBUjNkd3lXdkc5eTls?=
 =?utf-8?B?MDZLUVBvY3NrVEh3YTd6Q0tJM2hGNklXOHlDYjA3RWc1Q2dMcGNNenZUOC9p?=
 =?utf-8?B?c2ZabDhwRWcvNnF4aWg4d3NBWE5vUENYa0tqYVVHWUdNOW1ENEc3VkFweUkv?=
 =?utf-8?B?K2xoSG1QRzgrRjBESmRTZ1VSdFhreGZJMEdqdXYrNlYzVHpYZGswaWY0aXpD?=
 =?utf-8?B?REd5UlpzNzRxTW4zVGVPZVJWbjFVSGVFMDRHOXEzenpBZTN5NCtZcjNkZFVa?=
 =?utf-8?B?STd1NG1VQUhyUkYrRG1oSTQzeTVPUHZTYnExQzh5Z1o3R1pkNVlXdG5KQ1Ez?=
 =?utf-8?B?dWRBNVRqS3FiQkRZY2FUenlTU1N0R1RoZmoyWk1NaEZFOWR2TVdIaTAvQ0Fz?=
 =?utf-8?B?THZJZWJtd2ltK0ZzYjVSWDRyaWJyNW0vWTVtdCs3K0lxRnh4bVh1OUhaa09r?=
 =?utf-8?B?UUs5QnYxRFo0ZTNEOCtyeUY3dXFiYUJJSVp2OHRweE8vVXFONEk1UzdhN0dm?=
 =?utf-8?B?WHRQSDlzb1VZY0l6VHBmaVhBZDN1bVJESzlWUW0yazhJNnp4MkdDOXZGUGZF?=
 =?utf-8?B?eXhvNnNrRVhJd0VuMHkvdlAzcU9oMGZxdDhtYWJiTDVKY0g3QTdvdmNmTHBW?=
 =?utf-8?B?bXB1WklraHZMN0kvZjA3YUw5Umo3SUN4YmoyTksyYTF2ZjN0dk1PczBBVTFM?=
 =?utf-8?B?MWhBR3VCU01WTVZ3NVI0RVdaWU1QRFJlWW5rYzltSk9Gd091QVpGUXpLSGQy?=
 =?utf-8?B?MmFjVmdURkJsbWVkVEVCNE5RZlAxQ0g5cmppVVpYZXVscDhheElzblFMQm40?=
 =?utf-8?B?cUFSeUVMd0JFN0pyMTdvNzVLdGpEdzZhdEhJV0ZNT0MvSVpJVDUxQWNsS3Zr?=
 =?utf-8?B?ZmZUQlFiWklKZHF3VTFTaG5qbWc3Mmh0clFVaTJWRmtGaFNUQWRXNlF0enY0?=
 =?utf-8?B?VURVTEFqc1VpY2M4QjNJOWlkL3g1TjVkbzVtL2JhQnlNbFZvanZMcXV3Z0Jj?=
 =?utf-8?B?K1NreW9saXB4MjcwWW1TVG9KU1hUcVdDQWdncjNYem42dnJaeDQ4ci9HV3Qy?=
 =?utf-8?B?ZExzRDJicmpvL1puTCswamJQVGo4UisvQkw4M011UHAzZjMwUXg1a1VCelNs?=
 =?utf-8?B?T2tpVWJTMi8xb3c2Q0J6Sjh6NUJIaXFKVjl3YTZoMngrdysxQzEyMWF1YVUv?=
 =?utf-8?B?RGcvZlV4Mys2ekwxM09QTjUzcXdpMC9vMVZmZnE5M3dnOU1IejViaEd0RDJJ?=
 =?utf-8?B?MWR0WVRNclNaVlVHcmdIekYzV0R6YTVjamZDSUlDMFlORXNYTnJTV1lPTGtq?=
 =?utf-8?B?a00ybFk5a3hZcUtCOUR4Q1lOSUkxOUZkWTdCbWtUeXh0cElaSlpPQkIxVzVM?=
 =?utf-8?B?eHZJNDF5eXVrYTMrZGVOT2xNK3pScFgxNzNNL3F2aW5IRktZVzAwd2VRSGZ4?=
 =?utf-8?B?SnBWOWpkNXU1MEd0c2dFa1BBYkpZdXMvMEltOFJRM1JSTjhTV1RyTC92SlZk?=
 =?utf-8?B?WXVBUlZaMWl4Q04rR3VONm9VTzJUT1Z1T0pWQ1o4VXpNZnJZY0lkUnM4Q1NE?=
 =?utf-8?B?UzdMQjlHNDlNVHY0cHJJdE9WYXBHQ2FGZ3ZEZVpQUGEvVHljeTh0cjZDYURD?=
 =?utf-8?B?OXhTeUtsUmNTeVdkYUx2ZjQ1Rld5eGIzWHlkSU1FM0d6YVpHaHZLdVUyd0gv?=
 =?utf-8?B?S0praFNDaTF2TEsvRU9qakdldWVoQWwxdDl3d2Rvc0JSVldFWUxQeERTc2pV?=
 =?utf-8?B?MVBCdjNLd3hDY2FqVzM1a1hBbjFReFFwY3dOcnBJZU9TSnNFNENxTHoyMkRQ?=
 =?utf-8?B?QUV5dm5hb0VsMFBoVHQ0K3U2OXI0THdKaXhqdXloR2txQ3Uvcmg4VEJDUXpp?=
 =?utf-8?B?cTcwQUpzTFVHdUMwN1Y0V1IvUzA5SExWdnNmbzlid1JDL3lVNmY4SmdQR0pm?=
 =?utf-8?B?UlQrYU1xZzIwd3kwTEFEc3dKMUdvOUc5MzFyRDVyK05xSXR2RG1WN3NGMWNM?=
 =?utf-8?B?NFA4Y1U5TStha256THpXMmJTMGk1RWJNS3o1ajlFbmM0Wm83Sklkc0I4djM5?=
 =?utf-8?B?aDhZVHNSRVo4c2MvTEtvczh4azFLUmx5MWZQbGk1SG1zNXRPR0prZ2xyMFRx?=
 =?utf-8?B?U0k3c3JmaGRPOERaN1o1dHZrQVFDdUw0Y0MrQ0tNSVRtQ1dJTU1EdUE0M3U2?=
 =?utf-8?B?NTQyalJqWlFmekk2OUc2dlhKdkovOXFBYnFqRXpTci9acEtKVWw5QXNEMDN0?=
 =?utf-8?Q?ns6bH5V/qsv3VQYqlY7Q8owrWA1h9QJZXyvGR?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1399738f-0e73-4edc-3aba-08da2416f921
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 04:17:11.7351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GJ911+A0BJ6fS4twTaZ5fKFw9e+Ae4yKhc5Ny/BDQ9pEMCA8szyBXCUDGqSJs0Nv0Ywh0nE0hhhT3dNFqV6NPTknnggmXRab1gLWf1ESrRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR01MB2644
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Added Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
 as I'm not aware of the email change - Quan On 22/04/2022 11:08, Quan Nguyen
 wrote: > Add device tree binding document for the SSIF BMC driver. > >
 Signed-off-by:
 Quan Nguyen <quan@os.amperecomputing.com> > --- > v7: > + Change compatible
 strin [...] 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.103 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.103 listed in wl.mailspike.net]
 -3.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nhkjQ-0001fi-T5
Subject: Re: [Openipmi-developer] [PATCH v7 2/3] bindings: ipmi: Add binding
 for SSIF BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Added Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
as I'm not aware of the email change
- Quan

On 22/04/2022 11:08, Quan Nguyen wrote:
> Add device tree binding document for the SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v7:
>    + Change compatible string from "ampere,ssif-bmc" to "ssif-bmc"  [Jae]
> 
> v6:
>    + None
> 
> v5:
>    + None
> 
> v4:
>    + Fix warning with dt_binding_check [Rob]
>    + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml [Quan]
> 
> v3:
>    + Switched to use DT schema format [Rob]
> 
> v2:
>    + None
> 
>   .../devicetree/bindings/ipmi/ssif-bmc.yaml    | 38 +++++++++++++++++++
>   1 file changed, 38 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> new file mode 100644
> index 000000000000..02b662d780bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ssif-bmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SSIF IPMI BMC interface
> +
> +description: SSIF IPMI BMC device bindings
> +
> +maintainers:
> +  - Quan Nguyen <quan@os.amperecomputing.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ssif-bmc
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ssif-bmc@10 {
> +            compatible = "ssif-bmc";
> +            reg = <0x10>;
> +        };
> +    };



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
