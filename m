Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1C655113D
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jun 2022 09:17:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o3Beh-0002ny-QU; Mon, 20 Jun 2022 07:17:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1o3Beg-0002nn-9c
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jun 2022 07:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k2bNy4D4ZGTYBpozLztCuEEp0erKvR2Z02I5t4sTO3s=; b=IEKCRfP3B6phNXyyyj9abTKwk6
 VTwH4XfkGX3SBlA1pCg/Rg8te4hkw60uMIMAh+UTM+CNKsM6oR4x0Rl0g7iz7XLkJYefRxR8niOTR
 N2i7vHC2ie4HKfsKODUgouACDuQ/4qZ6BzHYO+Z9uwyWt0FD/lAlQAzAVpOOpp8fvhpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k2bNy4D4ZGTYBpozLztCuEEp0erKvR2Z02I5t4sTO3s=; b=WY2vUHEu34/BBEZEv69ne8OQtN
 XPvV5xexmYM/AYA3ezBtlmjjMrSY3vS+cYTxykxGRUqRlmJY68JTTf5a76CC6RkKMuTVd1ZZc8JxW
 fpVFjKYdSdvcfY6l9FTMarjcpdka+BPPKc63q00BhXHIVLP0BYrhsLRNKEq7Ks126kpo=;
Received: from mail-mw2nam04on2118.outbound.protection.outlook.com
 ([40.107.101.118] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3Bed-007yzE-8J
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jun 2022 07:17:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mH+B0hzBwh5ikW/IXOJqXcGUbs3wwiyNzEE/K/2RLCNDuoNHwk+bFJww1hinIIRjNwxiV7ObFYvQIgSG6zXnqSBPQt9TI9Kw+YyJ/rWgOkIt4ZChRI/2HLPzDuIsafNiGnr/44j1KBOGHa2BWZyszH7XesyWl9l7dgihdvFIZO9Ejfgdjj4kaXiW9e+LSY/w9xqmWZIvD1FrL7MUZa1EleFajp4h8u5MFqtZjCwlOYJ7WIXYpv0V/r1GAFV2WsIMLbxzHC06BDj0Ke43wbT5Q67UKk+3gzAkZS5c2aX9Di5ZY6b/ZpFgrxAOfxoZga23aVxQ5WBl98sKc+YFb9DoZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k2bNy4D4ZGTYBpozLztCuEEp0erKvR2Z02I5t4sTO3s=;
 b=k79mzlUN6u4nbbIM2bi8MfxCECKAlFjfjyncKoQnUXDQb3m6CLYe6+YZ9pPJZeg3rD5mCxk0mLbRd1LM1zvTRxJyoW7UEFq5QhelwFUvcFnT3fNa3IW5RRqmpFqr7ageYTiRWNvYcPICCJsVncy0gHsAia+VN4ftMSlFczmIgiVaxWep+9srtN0npLYIz0+b44iCs4GcQrktr1abGNVKpBjH67H0UPD8tYYuQw56GGzj0rVbgx4A6NhWU6qVYWR34uGH+mt2Rc7InmDKuluVpL1NgfGel+N6eeA0R8OclEfJQlkTn4Y8O5lOwUtzy/IPfJChvoUPbdx7BG08zlmbCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k2bNy4D4ZGTYBpozLztCuEEp0erKvR2Z02I5t4sTO3s=;
 b=R8Y5kgRlIiOWaLG+SPinBERNwKgmb90JopZ32GVFHEgavk1C8yuE3QC8qEJXfKSuUqCIbC3MTDC7oVTGjr3cp0b3CvvxP/NbAkJoJSfLsGD0JbxGkRnei5y6XwzQk0YwUwSm4i9eX+SSg0Uk7keGNvY3FSjHINe2lixHUnHuYmA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 CO6PR01MB7403.prod.exchangelabs.com (2603:10b6:303:136::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.14; Mon, 20 Jun 2022 07:16:51 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e%7]) with mapi id 15.20.5353.021; Mon, 20 Jun 2022
 07:16:50 +0000
Message-ID: <997aa782-deb0-1d88-c144-8ea4537e55c2@os.amperecomputing.com>
Date: Mon, 20 Jun 2022 14:16:36 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-2-quan@os.amperecomputing.com>
 <7b9923c0-50f0-556a-657c-9cf0ef9af5aa@wanadoo.fr>
In-Reply-To: <7b9923c0-50f0-556a-657c-9cf0ef9af5aa@wanadoo.fr>
X-ClientProxiedBy: SGAP274CA0001.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::13)
 To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0b3ce7e-b9b9-4d83-1595-08da528cd81d
X-MS-TrafficTypeDiagnostic: CO6PR01MB7403:EE_
X-Microsoft-Antispam-PRVS: <CO6PR01MB740351C335603C372706B762F2B09@CO6PR01MB7403.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Se8+vhj+e9QL7sO64WAq7T3JbvmpZsicCRhFXAfLu33MUSwZilRcTFkUv8NWz4z/ZCx10RNS4ypuVOSEPZCkG9zYMPWhK4fcm16BnAbxgzba4eVyjmrf6cPSz0QWcxESkXJZMr5uk31jLaMLgBVr7lTy40uIHIX1pGUI+w89FaEkY/5pTHaQC12UGnhFvluvYi9E3VpqNzSncHrx2HuZMPNrSnGY8khJ8dgdNCUKFDa0wzfy99kOMB7NmGXcHc4lJnOVwTPPErkNwRzZMdFKCyhavNIvLjj7o8oBOZNvbB50V8u9ZHbK6NK+i+mIQN+TAeleo6SVbGflwEYhBaq8J3/y4Vi2AZbUuw9/vXl/z8qj5o6GvcagawaFing11NNHMifAir4461PseMbDvzVYhLs6CPZn/fmNPLLCVulOep+YWfse/7P6qoKbr5RRuKLRN96JpDOBFoHWQ2D3bquxIICofBj5d1wXikH+U/hx7B1iUhZ60ghP6wRxssMEmvnV8Q2lhdHSadLX3c9sdJQB5+f06LDkYbMea0UZ2vaTqGIBjGHA9J5ZTjrQ5yhVU/OcvnK/7Oncb4DaJeEDYos8GlN6E4jzhydR7i2qq3x/wBchzwLfBcvL9ex3xm7rUCwXPXXw54RHtGdxrWFU1Pig2KZCOA03t3LZXml+NnCiKGF9fn7jummoLPv2Cge8ihzYRa+31/RoVoDYx6pMNboR+oeQ0PY0XyQ4fdXX1EN5pxgJEV69XQ+WWIJkSg3RNjRTnt0uhmpOKYkEdn3Z+xRW64nBJ8lpyPqOczEZzGVtbJ2nFW0GnHH6OtpQddHsMmP4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(8936002)(6486002)(83380400001)(966005)(66476007)(66574015)(53546011)(2616005)(31686004)(7416002)(498600001)(186003)(5660300002)(66946007)(86362001)(6666004)(2906002)(38100700002)(6916009)(316002)(8676002)(66556008)(31696002)(6506007)(6512007)(26005)(52116002)(38350700002)(4326008)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0d6d014QVlmTFB0Q21GbDI4RVhyVnMyRU4wOHBMZnNmOXJiSTI1MVBIUjA2?=
 =?utf-8?B?NEU5cW1PcERkVnV6eHJLOGhMSndtTElEeDRsT2xJaDU2ZkIwbkN0MFh5WGk1?=
 =?utf-8?B?eDVIYS94TnNtQUIwVmJhQnM4MlpDMjJyeVRNWklyQnBqOVVRSjlSWmxkQlRC?=
 =?utf-8?B?RkR4WENIdVlLbzZHYnZSb1JuVndsdytyeTVOdTNTSmNsWjZDUTc1SWxLcnk3?=
 =?utf-8?B?Yk5ZalMzUlNwc1Z6dG9IUFpHTWdrbW1QMjB2NjlwR25iN3lteU42RkNwOFRp?=
 =?utf-8?B?RXA0VWhONC9lZ1FESXNJWkR3RkxKdFlOTGs3ZS9weUl0VFd1ZUx6K0hxWEFu?=
 =?utf-8?B?MjgxUTlhMXQraXM3TGhZZ1kxd2VDcVlsMnJ1eGYxYVpvZjdNQURiNzVjdmlI?=
 =?utf-8?B?VDNPL0dRcUJPb1J3dEg5b1RNbG1sMmdUSzA0M1lJcWhkQTNwZDZ3cTBVZTM2?=
 =?utf-8?B?LzlVS0lDaVdxVFFhaTRWRXVNcEk5eWs5eUxvNUV2N3krL3luTURJdnMvanlV?=
 =?utf-8?B?eTJoT1hRbmFwNStFbGZjbXBBWnpzQmZ5VlFGRmppd2V6RFc4RzRqMFIzY3VL?=
 =?utf-8?B?eWhYeG5Ub0lyMmlhQjhmb3Y4VnN2QWQ5ZzZvSm11MXhrWmxiM0FQOUZjQlBY?=
 =?utf-8?B?bXlZRFNnc29Fdmp1NjJKWmlkNDdZZnR5TzdCK3BwRlRBcUJiY2hKUXpJWVpp?=
 =?utf-8?B?S2JGbVlqY2ZDbVhESEdpck9PR3RNSVFnY244WnVXL3ZMaUN2K1BsTng3Ykw0?=
 =?utf-8?B?VWpOVkRKTXdMRkhYQWp5V1ZBY2VoVWpGZ0liRWFKbXpEbDJ2cW00VzViRGtJ?=
 =?utf-8?B?T1hKS3M3SjV5OHcvazBKb1Y1dlB5YUZqTm9XQlh4clUxSnFjakRqM290SkZp?=
 =?utf-8?B?YXdLWWlhcG1qNUNxWHpmbUNKM2VPN25jRVpGcHlXbG82SmxtdTRmb0VydXVr?=
 =?utf-8?B?T1dWTjJlLzZpeG01aEdjL3ExbElOTmZtWkU5TGI3ZmNTTEk4VTFSMUx0bE4x?=
 =?utf-8?B?TXhEb0tObU1NWGsySjkxQVdpaVU2T3JBa25ZMkVCLzBNNXgxdkw0eE96ZmRi?=
 =?utf-8?B?UXNBdmc2WGUvVnVsNWFWcHgwOUdTeVQvZmpoV0xKR0UyVlQrN0NVVXM1Y3NL?=
 =?utf-8?B?NkVtUEhPOGtVeGdGb0VqYzNaQmRLcTBXQjNMendlRVB2RHF4Q25BdUxnU3hV?=
 =?utf-8?B?UlgzM2N0L3Axd0s5eURsSEhhcm5EbVpEZ0x3bVVrNWJIZ2xzdkxici9VNlN0?=
 =?utf-8?B?b0NDZkxwSitrSkMvZzBGbFhmazZac0VBSEttY0NrK21qSlA2dzI2RWdJVTNr?=
 =?utf-8?B?N0NqWkpub3BnblBXMXAzUVJ6OHdHR0g0YXVGSlpmSTUyZ1lsTUU4aWhqMjJC?=
 =?utf-8?B?aW9BSUZVVWxXWGw3bU4yRGpKbHgvcWdhbnpiWDNDVHBKaU5aeFpsVEE2Snk3?=
 =?utf-8?B?eS9iY1k4QnRWK212THROSnlDWkJEN1JZcG5YRHMwcXlKUVBYRlRqWEZXYjNH?=
 =?utf-8?B?a0FhbFRQanFwd25GSmltd3ZSR0JwQ1IyRitlN2lXa1l4QjVQT3IyV21NLzVi?=
 =?utf-8?B?MEkvbVVmekc5dUdvRlNPQjY3MExoMEtTUUNSWUU5RlAwMTFQa3VGY2ZNaTBL?=
 =?utf-8?B?aUEvWjgvM25WdFpZdGdza0ZDcWVjaStCaEN2R2ZkTk51ZjlBaTlZMDRYSXpZ?=
 =?utf-8?B?MkFnOVpJRkpBVVNmY01tSDNUcnFlRndrbkl2L1dLUE96QzhGRkN6Q0xtTG4z?=
 =?utf-8?B?NE1MQk9XVkRLc2hvYk03UHBnNEtvQkRaN2FqUkdVK0MvZFpBc0hqeE9pU2dx?=
 =?utf-8?B?Z0tYWXdRYW1SSDFHd1QvSE1FclNlMDlsUHVVWU53dC85WElDWnowMmhZc0NL?=
 =?utf-8?B?MGJDby9ONFVCUXEvTzdWMUVaWkVYenBZRytuakhyYXp3ODBXeVAwMGV0alZ2?=
 =?utf-8?B?V3JlRTErTmd4dEtzN0VTallpSEZsM3ZNbEZVb3B4TGl2MkFINFc3K0lTU3pD?=
 =?utf-8?B?UlFaTi9DU3pWSHhkZ1ZoaitTSktiNU1BaUkzb01xdVZtemxQbTUwY2gxYVZX?=
 =?utf-8?B?TkRWVEFGUllBUG5nYkZ1RExScm9LdU5OUWRQRFBsbkkvNGIzZk1vZFZSNmda?=
 =?utf-8?B?cXhRMkMvb0dEb055NkZOVy9pcm5aZXdtQWt6U1lCc0pDSEJlbFlqZ3RJVEw3?=
 =?utf-8?B?THpqZFFuMjFSNFlNS1JOcEhpYWFqaWVuNHEyb1U3SDFjNnNLNkpFRTlxaTh3?=
 =?utf-8?B?ZHVSOGtlWGQ1MUhkRVJINC91WXV5UUx2RE9YbEV0Qk9SRVpEQ0w1UWQ1VFVF?=
 =?utf-8?B?K0swYmNuQWNLK05qdmxPWVZzUGdJYmRUTXF1RWMvY2VRUVd2SGpUQWhBRXdX?=
 =?utf-8?Q?eq2IevJVvatIQdKE6CTATZVNegb+3wk/mZ8f3?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b3ce7e-b9b9-4d83-1595-08da528cd81d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 07:16:50.6966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UgZrz7GY/ztCVeXdwhEGpy9wXcNpWwiTOaO5vkW893Y56EOh3eF/93A8KwTvne/WCKist97SjKhrdt76qsAK/x/jMk+c2w8P9Xe/epybJL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR01MB7403
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 17/06/2022 03:47, Christophe JAILLET wrote: > Le 15/06/2022
    à 11:02, Quan Nguyen a écrit : >> The SMBus system interface (SSIF) IPMI
    BMC driver can be used to perform >> in-band IPMI communicati [...] 
 
 Content analysis details:   (-0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.101.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.101.118 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o3Bed-007yzE-8J
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: devicetree@vger.kernel.org, minyard@acm.org, linux-aspeed@lists.ozlabs.org,
 andrew@aj.id.au, benh@kernel.crashing.org, openbmc@lists.ozlabs.org,
 thang@os.amperecomputing.com, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, phong@os.amperecomputing.com, wsa@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 openipmi-developer@lists.sourceforge.net, patches@amperecomputing.com,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTcvMDYvMjAyMiAwMzo0NywgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+IExlIDE1LzA2
LzIwMjIgw6AgMTE6MDIsIFF1YW4gTmd1eWVuIGEgw6ljcml0wqA6Cj4+IFRoZSBTTUJ1cyBzeXN0
ZW0gaW50ZXJmYWNlIChTU0lGKSBJUE1JIEJNQyBkcml2ZXIgY2FuIGJlIHVzZWQgdG8gcGVyZm9y
bQo+PiBpbi1iYW5kIElQTUkgY29tbXVuaWNhdGlvbiB3aXRoIHRoZWlyIGhvc3QgaW4gbWFuYWdl
bWVudCAoQk1DKSBzaWRlLgo+Pgo+PiBUaGFua3MgRGFuIGZvciB0aGUgY29weV9mcm9tX3VzZXIo
KSBmaXggaW4gdGhlIGxpbmsgYmVsb3cuCj4+Cj4+IExpbms6IAo+PiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjIwMzEwMTE0MTE5LjEzNzM2LTQtcXVhbi1zaGV4
Nk1OUVIySi9TZkR6Zjc4YXp6S3pFRHhZbGVYREBwdWJsaWMuZ21hbmUub3JnLyAKPj4KPj4gU2ln
bmVkLW9mZi1ieTogUXVhbiBOZ3V5ZW4gCj4+IDxxdWFuLXNoZXg2TU5RUjJKL1NmRHpmNzhhenpL
ekVEeFlsZVhEQHB1YmxpYy5nbWFuZS5vcmc+Cj4+IC0tLQo+IAo+IEhpLAo+IAo+IGEgZmV3IG5p
dHBpY2sgYmVsb3cKPiAKPiBbLi4uXQo+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lw
bWkvc3NpZl9ibWMuYyBiL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wYmZkNGI5YmJhZjEKPj4gLS0tIC9k
ZXYvbnVsbAo+PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4+IEBAIC0wLDAg
KzEsODgwIEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4+
ICsvKgo+PiArICogVGhlIGRyaXZlciBmb3IgQk1DIHNpZGUgb2YgU1NJRiBpbnRlcmZhY2UKPj4g
KyAqCj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjIsIEFtcGVyZSBDb21wdXRpbmcgTExDCj4+ICsg
Kgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9pMmMuaD4KPj4gKyNpbmNsdWRlIDxs
aW51eC9taXNjZGV2aWNlLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+ICsjaW5j
bHVkZSA8bGludXgvb2YuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9wb2xsLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvc2NoZWQuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2Nr
Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvdGltZXIuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9qaWZm
aWVzLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaXBtaV9zc2lmX2JtYy5oPgo+PiArCj4+ICsjZGVm
aW5lIERFVklDRV9OQU1FwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgImlwbWktc3NpZi1ob3N0Igo+PiArCj4+ICsjZGVmaW5lIEdFVF84QklU
X0FERFIoYWRkcl83Yml0KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoKChhZGRyXzdi
aXQpIDw8IDEpICYgCj4+IDB4ZmYpCj4+ICsKPj4gKy8qIEEgc3RhbmRhcmQgU01CdXMgVHJhbnNh
Y3Rpb24gaXMgbGltaXRlZCB0byAzMiBkYXRhIGJ5dGVzICovCj4+ICsjZGVmaW5lIE1BWF9QQVlM
T0FEX1BFUl9UUkFOU0FDVElPTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMgo+PiArLyogVHJh
bnNhY3Rpb24gaW5jbHVkZXMgdGhlIGFkZHJlc3MsIHRoZSBjb21tYW5kLCB0aGUgbGVuZ3RoIGFu
ZCB0aGUgCj4+IFBFQyBieXRlICovCj4+ICsjZGVmaW5lIE1BWF9UUkFOU0FDVElPTiAgICAgICAg
ICAgICAgICAgICAgICAgICAKPj4gKE1BWF9QQVlMT0FEX1BFUl9UUkFOU0FDVElPTiArIDQpCj4+
ICsKPj4gKyNkZWZpbmUgTUFYX0lQTUlfREFUQV9QRVJfU1RBUlRfVFJBTlNBQ1RJT07CoMKgwqDC
oCAzMAo+PiArI2RlZmluZSBNQVhfSVBNSV9EQVRBX1BFUl9NSURETEVfVFJBTlNBQ1RJT07CoMKg
wqAgMzEKPj4gKwo+PiArI2RlZmluZSBTU0lGX0lQTUlfU0lOR0xFUEFSVF9XUklURcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDB4Mgo+PiArI2RlZmluZSBTU0lGX0lQTUlfU0lOR0xFUEFSVF9S
RUFEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDMKPj4gKyNkZWZpbmUgU1NJRl9JUE1J
X01VTFRJUEFSVF9XUklURV9TVEFSVMKgwqDCoMKgwqDCoMKgwqAgMHg2Cj4+ICsjZGVmaW5lIFNT
SUZfSVBNSV9NVUxUSVBBUlRfV1JJVEVfTUlERExFwqDCoMKgwqDCoMKgwqAgMHg3Cj4+ICsjZGVm
aW5lIFNTSUZfSVBNSV9NVUxUSVBBUlRfV1JJVEVfRU5EwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHg4
Cj4+ICsjZGVmaW5lIFNTSUZfSVBNSV9NVUxUSVBBUlRfUkVBRF9TVEFSVMKgwqDCoMKgwqDCoMKg
wqDCoCAweDMKPj4gKyNkZWZpbmUgU1NJRl9JUE1JX01VTFRJUEFSVF9SRUFEX01JRERMRcKgwqDC
oMKgwqDCoMKgwqAgMHg5Cj4+ICsKPj4gKy8qCj4+ICsgKiBJUE1JIDIuMCBTcGVjLCBzZWN0aW9u
IDEyLjcgU1NJRiBUaW1pbmcsCj4+ICsgKiBSZXF1ZXN0LXRvLVJlc3BvbnNlIFRpbWUgaXMgVDZt
YXgoMjUwbXMpIC0gVDFtYXgoMjBtcykgLSAzbXMgPSAyMjdtcwo+PiArICogUmVjb3ZlciBzc2lm
X2JtYyBmcm9tIGJ1c3kgc3RhdGUgaWYgaXQgdGFrZXMgdXAgdG8gNTAwbXMKPj4gKyAqLwo+PiAr
I2RlZmluZSBSRVNQT05TRV9USU1FT1VUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA1MDAgLyogbXMgKi8KPj4gKwo+PiArc3RydWN0IHNzaWZfcGFydF9idWZm
ZXIgewo+PiArwqDCoMKgIHU4IGFkZHJlc3M7Cj4+ICvCoMKgwqAgdTggc21idXNfY21kOwo+PiAr
wqDCoMKgIHU4IGxlbmd0aDsKPj4gK8KgwqDCoCB1OCBwYXlsb2FkW01BWF9QQVlMT0FEX1BFUl9U
UkFOU0FDVElPTl07Cj4+ICvCoMKgwqAgdTggcGVjOwo+PiArwqDCoMKgIHU4IGluZGV4Owo+PiAr
fTsKPj4gKwo+PiArLyoKPj4gKyAqIFNTSUYgaW50ZXJuYWwgc3RhdGVzOgo+PiArICrCoMKgIFNT
SUZfUkVBRFnCoMKgwqDCoMKgwqDCoMKgIDB4MDAgOiBSZWFkeSBzdGF0ZQo+PiArICrCoMKgIFNT
SUZfU1RBUlTCoMKgwqDCoMKgwqDCoMKgIDB4MDEgOiBTdGFydCBzbWJ1cyB0cmFuc2FjdGlvbgo+
PiArICrCoMKgIFNTSUZfU01CVVNfQ01EwqDCoMKgwqAgMHgwMiA6IFJlY2VpdmVkIFNNQnVzIGNv
bW1hbmQKPj4gKyAqwqDCoCBTU0lGX1JFUV9SRUNWSU5HwqDCoCAweDAzIDogUmVjZWl2aW5nIHJl
cXVlc3QKPj4gKyAqwqDCoCBTU0lGX1JFU19TRU5ESU5HwqDCoCAweDA0IDogU2VuZGluZyByZXNw
b25zZQo+PiArICrCoMKgIFNTSUZfQkFEX1NNQlVTwqDCoMKgwqAgMHgwNSA6IEJhZCBTTWJ1cyB0
cmFuc2FjdGlvbgo+IAo+IElmIHRoZXNlIHN0YXRlcyBhcmUgcmVsYXRlZCB0byB0aGUgZW51bSBq
dXN0IGJlbG93LCAKPiBzL1NTSUZfQkFEX1NNQlVTL1NTSUZfQUJPUlRJTkcvICsgZGVzY3JpcHRp
b24gdXBkYXRlPwo+IApUaGFuayB5b3UgZm9yIHRoaXMgY2F0Y2guCldpbGwgZml4IGluIG5ldyB2
ZXJzaW9uLgoKPj4gKyAqLwo+PiArZW51bSBzc2lmX3N0YXRlIHsKPj4gK8KgwqDCoCBTU0lGX1JF
QURZLAo+PiArwqDCoMKgIFNTSUZfU1RBUlQsCj4+ICvCoMKgwqAgU1NJRl9TTUJVU19DTUQsCj4+
ICvCoMKgwqAgU1NJRl9SRVFfUkVDVklORywKPj4gK8KgwqDCoCBTU0lGX1JFU19TRU5ESU5HLAo+
PiArwqDCoMKgIFNTSUZfQUJPUlRJTkcsCj4+ICvCoMKgwqAgU1NJRl9TVEFURV9NQVgKPj4gK307
Cj4+ICsKPiAKPiBbLi4uXQo+IAo+PiArc3RhdGljIGludCBzc2lmX2JtY19wcm9iZShzdHJ1Y3Qg
aTJjX2NsaWVudCAqY2xpZW50LCBjb25zdCBzdHJ1Y3QgCj4+IGkyY19kZXZpY2VfaWQgKmlkKQo+
PiArewo+PiArwqDCoMKgIHN0cnVjdCBzc2lmX2JtY19jdHggKnNzaWZfYm1jOwo+PiArwqDCoMKg
IGludCByZXQ7Cj4+ICsKPj4gK8KgwqDCoCBzc2lmX2JtYyA9IGRldm1fa3phbGxvYygmY2xpZW50
LT5kZXYsIHNpemVvZigqc3NpZl9ibWMpLCAKPj4gR0ZQX0tFUk5FTCk7Cj4+ICvCoMKgwqAgaWYg
KCFzc2lmX2JtYykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOwo+PiArCj4+ICvC
oMKgwqAgc3Bpbl9sb2NrX2luaXQoJnNzaWZfYm1jLT5sb2NrKTsKPj4gKwo+PiArwqDCoMKgIGlu
aXRfd2FpdHF1ZXVlX2hlYWQoJnNzaWZfYm1jLT53YWl0X3F1ZXVlKTsKPj4gK8KgwqDCoCBzc2lm
X2JtYy0+cmVxdWVzdF9hdmFpbGFibGUgPSBmYWxzZTsKPj4gK8KgwqDCoCBzc2lmX2JtYy0+cmVz
cG9uc2VfaW5fcHJvZ3Jlc3MgPSBmYWxzZTsKPj4gK8KgwqDCoCBzc2lmX2JtYy0+YnVzeSA9IGZh
bHNlOwo+PiArwqDCoMKgIHNzaWZfYm1jLT5yZXNwb25zZV90aW1lcl9pbml0ZWQgPSBmYWxzZTsK
Pj4gKwo+PiArwqDCoMKgIC8qIFJlZ2lzdGVyIG1pc2MgZGV2aWNlIGludGVyZmFjZSAqLwo+PiAr
wqDCoMKgIHNzaWZfYm1jLT5taXNjZGV2Lm1pbm9yID0gTUlTQ19EWU5BTUlDX01JTk9SOwo+PiAr
wqDCoMKgIHNzaWZfYm1jLT5taXNjZGV2Lm5hbWUgPSBERVZJQ0VfTkFNRTsKPj4gK8KgwqDCoCBz
c2lmX2JtYy0+bWlzY2Rldi5mb3BzID0gJnNzaWZfYm1jX2ZvcHM7Cj4+ICvCoMKgwqAgc3NpZl9i
bWMtPm1pc2NkZXYucGFyZW50ID0gJmNsaWVudC0+ZGV2Owo+PiArwqDCoMKgIHJldCA9IG1pc2Nf
cmVnaXN0ZXIoJnNzaWZfYm1jLT5taXNjZGV2KTsKPj4gK8KgwqDCoCBpZiAocmV0KQo+PiArwqDC
oMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4gCj4gQ291bGQgYmUgInJldHVybiByZXQ7Igo+IChzZWUg
YmVsb3cpCj4gCldpbGwgY2hhbmdlIHRvICJyZXR1cm4gcmV0OyIgaW4gbmV4dCB2ZXJzaW9uCj4+
ICsKPj4gK8KgwqDCoCBzc2lmX2JtYy0+Y2xpZW50ID0gY2xpZW50Owo+PiArwqDCoMKgIHNzaWZf
Ym1jLT5jbGllbnQtPmZsYWdzIHw9IEkyQ19DTElFTlRfU0xBVkU7Cj4+ICsKPj4gK8KgwqDCoCAv
KiBSZWdpc3RlciBJMkMgc2xhdmUgKi8KPj4gK8KgwqDCoCBpMmNfc2V0X2NsaWVudGRhdGEoY2xp
ZW50LCBzc2lmX2JtYyk7Cj4+ICvCoMKgwqAgcmV0ID0gaTJjX3NsYXZlX3JlZ2lzdGVyKGNsaWVu
dCwgc3NpZl9ibWNfY2IpOwo+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4gK8KgwqDCoMKgwqDCoMKg
IG1pc2NfZGVyZWdpc3Rlcigmc3NpZl9ibWMtPm1pc2NkZXYpOwo+PiArwqDCoMKgwqDCoMKgwqAg
Z290byBvdXQ7Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+ICtvdXQ6
Cj4+ICvCoMKgwqAgZGV2bV9rZnJlZSgmY2xpZW50LT5kZXYsIHNzaWZfYm1jKTsKPiAKPiBUaGlz
IGxvb2tzIHVzZWxlc3MgdG8gbWUuIFRoZSB3aG9sZSBlcnJvciBoYW5kbGluZyBwYXRoIGNvdWxk
IGJlIAo+IHJlbW92ZWQsIG9yIHVwZGF0ZWQgdG8gb25seSBoYXZlIHRoZSAibWlzY19kZXJlZ2lz
dGVyKCkiIGFib3ZlLgo+IAoKV2lsbCByZXdyaXRlIGFzOgoKICAgICAvKiBSZWdpc3RlciBJMkMg
c2xhdmUgKi8KICAgICBpMmNfc2V0X2NsaWVudGRhdGEoY2xpZW50LCBzc2lmX2JtYyk7CiAgICAg
cmV0ID0gaTJjX3NsYXZlX3JlZ2lzdGVyKGNsaWVudCwgc3NpZl9ibWNfY2IpOwogICAgIGlmIChy
ZXQpCiAgICAgICAgIG1pc2NfZGVyZWdpc3Rlcigmc3NpZl9ibWMtPm1pc2NkZXYpOwoKICAgICBy
ZXR1cm4gcmV0OwoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgotIFF1YW4KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Bl
cgo=
