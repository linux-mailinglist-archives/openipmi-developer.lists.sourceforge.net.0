Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPAHA5aPz2kzxQYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:59:50 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25224393173
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zBjBLtUmBNFGBdYc0tRLNJWpjNLO51KWdVhdPi0RB1o=; b=kNRe/8w5gNcKIV63xVidN0K/gq
	WnpJgLyUlFGORhFGBVElvRqBe5g4F3ixgm1V1HwD5jmHFBdnjfLaXUHE/LNzPo+qUgK3Mu09L9zI7
	Y1t9gToO0mlpbl3Muw47xGhwi5dnKOo2JxMpMt+7liEGakqa5OOTaQUmq4/sBPZ1oDXY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8bJU-0005Dh-7o;
	Fri, 03 Apr 2026 09:59:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1w8bJH-0005Cq-ME
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3N37bQns8MzsnZd+NLn5TOccNrf5RTnse3t+IzwUvfA=; b=hEnq+XGpkzgKPOAjucQzYZ3ukE
 060ldWQ/mW5EsnjUjWBkjrdWN+JRx3xMq398wuoyGFHMP0M1CJi3UbUoaiNTNp+IaNwa3oG0KZxZr
 HgyCnxs6B0UdHPxbVhxDSPsHAm/W1IFbT0JK06UCJbbGqcenjPURktGrvQkAH53Rmm2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3N37bQns8MzsnZd+NLn5TOccNrf5RTnse3t+IzwUvfA=; b=aMfgNL7KFY8TmWn9/Ir/Dye+fQ
 7MEiyZ/37Fbs5Wbkc3F3U5WA5yJ3BgNYRTaU2BbVp0Il08hPovMnwUQWW2QpGjEhcUVlfhY3XGGdV
 kAoUCN2YiiKiJimcfI+YmfD/fCgK952L13T1WXpwOXbCuWuzKasC8xnjMJdvXCpe3tT4=;
Received: from mail-eastus2azon11021129.outbound.protection.outlook.com
 ([52.101.57.129] helo=BN8PR05CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8bJA-0008BT-3k for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:59:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KWQMajdr5hn4k4HJMu54fFIl2SPoByop4iCEn0AyhK0fxdioHFa+Nq6tR9H5BhuPuJKYzSmXtjuHANsB25NScsvOvKh8dE5xOJIbQtEkW6/gezwG6eAnF7GUR8Rm5wUpt0vUTy+TfhG8SlT6C1ql/4E0ZH/T7xfJXxSkCweiS/u6Jr/KWq4BTCjsG5XKRxb2srJG8DCKlcR0miRHVCZccFHVNNPGmmocVim/D53HCUrmNCBDcrXlvbsurEX9yLaR6qxCfBh4JMFhLWMRV1ZsdlwSLWOM7YMnWe4l10hWP/R48Wiw3+XAXyD0C0jB3uKlqnWCRD03dCh7w+UjeM8cNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3N37bQns8MzsnZd+NLn5TOccNrf5RTnse3t+IzwUvfA=;
 b=P9KRdB179Xp0T9wlXZHiCckZ3QF6zzxDMBFq/lsUO6LBYyKTU4E3cYR9DN3fecAwsml43iUpjILc+gfX1z68aym2L/CK7ccXAQrShY3Q7MSsR2K+2acDJZ6O5LjKH4V9LK0fEEN9RUVYFGBETfM2rzMhLEJQVPeDHsDUb34M3a2mOIS9nTkOieCc41iT90nDbIQWRytSzzpoZiprJUcro+HfaRvvvA//GO1o3Fr+JOx0hhS3OgDu3Nyg6lX5AaKImPaT2/6k0yXe/GRNhd2fN7yYfLrPb9ObFLR9nck8HxIzmv6RXP+aFOaxnaOs07/bfxCgNASQRNDbj8I3OATKVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3N37bQns8MzsnZd+NLn5TOccNrf5RTnse3t+IzwUvfA=;
 b=vqwR1E4H7NTvR2Le3idvx8VOVmCBAt8nIxenUWNXaPvZwkX+5N9NAwgHFmMt1s//iMKef6rEk3myyO+WtFkZGPU7UG7iZeDZAWR3InARC4FDl8puiwXUc3s7z61GS7CTAyP0/xxL59Fbe9MA3fXiO43oSwQwXN4kfVya675BgWU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from LV5PR01MB9418.prod.exchangelabs.com (2603:10b6:408:307::22) by
 SN4PR01MB7519.prod.exchangelabs.com (2603:10b6:806:206::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.21; Fri, 3 Apr 2026 07:23:32 +0000
Received: from LV5PR01MB9418.prod.exchangelabs.com
 ([fe80::7c7e:35d5:73d6:89f6]) by LV5PR01MB9418.prod.exchangelabs.com
 ([fe80::7c7e:35d5:73d6:89f6%4]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 07:23:32 +0000
Message-ID: <233889df-38ae-4878-afe9-5d23d74be00f@os.amperecomputing.com>
Date: Fri, 3 Apr 2026 14:23:20 +0700
User-Agent: Mozilla Thunderbird
To: corey@minyard.net, Jian Zhang <zhangjian.3032@bytedance.com>
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
 <ac6Og2aNEoT0p2xj@mail.minyard.net>
Content-Language: en-CA
In-Reply-To: <ac6Og2aNEoT0p2xj@mail.minyard.net>
X-ClientProxiedBy: SG2PR06CA0183.apcprd06.prod.outlook.com (2603:1096:4:1::15)
 To LV5PR01MB9418.prod.exchangelabs.com
 (2603:10b6:408:307::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV5PR01MB9418:EE_|SN4PR01MB7519:EE_
X-MS-Office365-Filtering-Correlation-Id: bbe0eb21-65e9-4593-c1db-08de9151e8cf
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|55112099003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: dlSN+YRUEEpcpZlTY+Fxx7zOzeNaRVdbBHk1KcYCPue0aVEChaS5Vd6USMiccU+ZKvSvEsh6jI6C3EuYSWK3bdJScbXu5D7mzEs2lqayv/El4OHVemRM4SRd+0pZAzLaWbXOegFGFGHtVrUzC8WnuZZjgclw6A/LnZItdDV424fwlH7DfsD/IK6jeJeJ3NKjxxNwutnl9LmKCB8ViW+lEXKDCWZRRutzLhv7RS6w3jjRIh85Z5rHDwdSbCSvQafzh6Z8lRsQSiypzfsSXMkdfrF/9vqMHUoFyw88PsTnILcd19zvauDlCDVGWdczSCesL12bSDN85/0RaQUHSjLneiCZw8kQ1kOtqmWr6JeJ4GqJl5XWQ1jim8b5/n+p7mfRRW+80VOROgkQkFJArgSquwxvo+eCNcYFL0RNlsF+EXo3BYuRNAEwqbLMxlL6DPAPvkfrvNrIVhgvZYMBrCzjcfAXBPGJ/iCgW0pB4uVUoOYV9mAaOqe8GNPIOqrZKdSCDAH7rqUnzYkm+0i3bbCjhsZE7j2vHHkqyvBOPncAT53U9uDUPv+LMWACbMve9Cd80lAb2Wi+/eiPymNVrgZB/CEGGHgee+i7hTZiaQ/3wIkcRqHS0YMpFuBAL7ZTSKePC0F2Vk6DMIpPJpojaV1tFzrmIz//xCeVBMjfmBykhGTmhHXQGi+HVeqG/5VoNBcznPZu1tAaW9SrglsUMGZY9kTL2tFb2AAAqNWOFQ6YR2w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV5PR01MB9418.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(55112099003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE12U29uSi9PL2V1WDl0NGtNL2E1QUZ1ZXRoZ2Mvam82NVVhaDRIL1ZKNmJr?=
 =?utf-8?B?WW51dUhJcXF3TzVSRXRIcTRUZHBCNFBUUTRxenpwQnU0b2NNTFk3WEZzTFRK?=
 =?utf-8?B?Qi9yc0p6NTBTUTVicDhCUVZpSTVQMGo0S0tHNTk4Ry9kM0FLTDR1T3BRMDdw?=
 =?utf-8?B?TWpUK3Vmb0tCeng1T0RleFU3RUxMUlhzNEFEZ2FGNVFFT09KQ1BlM1FJNG1J?=
 =?utf-8?B?Q3lMY3ZuR01QRlhramdWTnN0MU9HUjZFSm40UGNZWjVRSWhxbkdvMG9WNU5E?=
 =?utf-8?B?RTNteFBndkgwK3NLRFJaLzc4K0pBRHVJcjlRRVVNN25XdVhWb3NuNWRGVU93?=
 =?utf-8?B?dGl2Q25hZUR1YTJrcFFoZFBwMGdFSjAyLzZPNE1SS2MxaElOSzVYbWNEeVUr?=
 =?utf-8?B?MFliNG0yN0JKVHBvZjByQ3JHK1dwTzA0VjJ0Nk1mM1lXa003OURLRXRscWRl?=
 =?utf-8?B?S2hxaVRzK3NKNDBJVDBPZWU4aU45ajNDZTRVTjRuY3hQdVFNRUMvYkkvL2hk?=
 =?utf-8?B?aXZMNitEeEJETk5UT016Tm9PTEdhYWNUckhlUDMzSHovd2p2a1Naa09FZ04y?=
 =?utf-8?B?cVg0SEpDQXFxWUJOSnNFQzNCczhTa0plUjBEVHlFRW54SFhoSGpjd2lqaGsv?=
 =?utf-8?B?R1ZjL09LcWJSR3ExdXJMTGRtTVkzd2xWaVBUcUZqcjY0R3llc0FvTGM2T0lC?=
 =?utf-8?B?bUpTczVyQTVrTWtEU3NtZVZtQTVVek9TTXYzalJCNzdySjRuWVhJRHUvV2pa?=
 =?utf-8?B?VDVtU1lQNWJ5cmpINFdHV1VEcnh1RklIUDVEeUJmUFhBeFNPYVBqTVhGanI2?=
 =?utf-8?B?dzQ1QlpLb3FCQ1NTZHpBL0tmd1Y5bzhNdk1qWlV0Ynh2UDZKS2hwb2Z2VXFB?=
 =?utf-8?B?MUlpcXQ1enVac0pEcUt6K1liMW5jekJHdXQyT3EyTm9mdWpicWNncnBnSHEz?=
 =?utf-8?B?NmxvcGtqMnFjTHFLdnF3bkRHdGQrUUZjR21zQ1Y5NGk1OVQrOTh2Q0hnQ2E0?=
 =?utf-8?B?Z3QrUFZBYVA0YXgwOTR0UXVVeGZVS1ZZTnBBY0lleG1MNFB0TmZGYjJpSGw5?=
 =?utf-8?B?VlZsalVzODNJdHF1NkxZcmJ2L3hWZC9WRmc3N0tlaVRIZ1MzTWNBbDJVOVRL?=
 =?utf-8?B?alVpa0xmMnBpWDlPUDJXT3J2Q1MvSnlPYThBSjI5QVZqb0s4R2k4ODdHQjBR?=
 =?utf-8?B?T0JBdW9SZlg1ZHBGc3NUZ1psT3lQTjRIUU13bGlUaE5OWVhBVG1nVzd5eEV1?=
 =?utf-8?B?eEs4MWZQclJtR0tmN0FKa3F5RGtHdkQvZHhPZ1RYemRsbnRjMHJzTTJoUTVD?=
 =?utf-8?B?UTZ3S0FENnJoSTFaTFY3TTU1UUhqblNrNm9xa3p6MElzVVBHalFHQUw0UEpr?=
 =?utf-8?B?dUdkK0dvbE9MQjJtWFNkb05uUFRhSXY5b0Z4MEVJTklneHlYU0hkcWsxVkR5?=
 =?utf-8?B?ek5mYlpyazFXVVRpcW5ZME1TWUxEMldhWkk0NEVkWHpKbnBHaW1Rd2ZUeTBo?=
 =?utf-8?B?YXlvVHAzRExheFBkc3IzNnIyTloyRDlMVG5BUnRPM3lodys1SGR5T1laVFJX?=
 =?utf-8?B?STdnZElkSTZ5OSt2bEs1MWU1bGNjYTl5UjMxL2habS8rNkdUWGJjdkRHSXlJ?=
 =?utf-8?B?VlNTejFqYlRLV2hQclNreHBOK05vYUxGeE9HODlvSm42SkhrRHpRTCttU3ph?=
 =?utf-8?B?WFd2SnUrRHZTdmc1S2tieHdEd2tyclZSaUxyZDkrYzE5ZlowUEFrN2hoZ1lh?=
 =?utf-8?B?bmRmbWZGNnVMcTV0eDU2OWNnZWcyQVp1Ym8vRS8vaUNNSkZ4SWVMYXM3L0pV?=
 =?utf-8?B?L3FDVDBzbXNBSVJyc2FiVlhuZEk2QzMwenhNb2FXeDkzYUVQZ3dJbzIyRVZ6?=
 =?utf-8?B?OXZsVnEzYjhlNWQwUVBXc1FHOUQvZC9zWDFKRUhLVDhxejZpMjZOM0diY01K?=
 =?utf-8?B?OU9TUGFCbEhrR3NNeGMrNmZoV0kzeU5UVVAzWFdLOG0raU1Pd0xmMDB5Z1dz?=
 =?utf-8?B?TGtaQzk1U1NIRUdEdERRbmtudm9Cdi90M3hhWE1uZHZEYWk2aEV3WS9kVUpt?=
 =?utf-8?B?QTZQdzBkZXl5YUxOaWRFRktTcytySzJyZ0M5UFpkR25QaTZZWnpGUGpEWHJN?=
 =?utf-8?B?ZTY2emRycG5YcDJHbTlQdURpVFJDYVdrVFZFam5nUmhZRTRrZ21NZnlwREJK?=
 =?utf-8?B?QkVKQkNFRThNYk5MRElsaTJ4MEJQQk1manFteWt3WWlsZFc3L2ZpU0NnNGtl?=
 =?utf-8?B?R2lxVXJqc0J3T3dZWEg5R2JjVldManpHWlJqRW9zQkZMQlloSVBNUGtQRUVG?=
 =?utf-8?B?UDhOd1pQZm1pTVpiUHQ4dTRiMEQrZEZEalM2eHhqOXh6UG9xQTVnL1lMWDdP?=
 =?utf-8?Q?9wCYOd+pDuC4X8G4=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe0eb21-65e9-4593-c1db-08de9151e8cf
X-MS-Exchange-CrossTenant-AuthSource: LV5PR01MB9418.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 07:23:32.0778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YsCj1/f62hXyAHI1Dhp6HfEH8rs4C/6hPQ95QDrYo2XamHt8fLIZ4TBgjSrgT3faQVN4lYmb+2EIx5n3Pr7Xv18HIoYhPjZgp9PMu4A3yUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR01MB7519
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/4/26 22:42, Corey Minyard wrote: > On Thu, Apr 02, 2026
 at 07:04:31PM +0800, Jian Zhang via Openipmi-developer wrote: >> The response
 timer can stay armed across device teardown. If it fires afte [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.57.129 listed in wl.mailspike.net]
X-Headers-End: 1w8bJA-0008BT-3k
Subject: Re: [Openipmi-developer] [PATCH 1/5] ipmi: ssif_bmc: cancel
 response timer on remove
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:zhangjian.3032@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,os.amperecomputing.com:s=selector2];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[quan@os.amperecomputing.com];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,os.amperecomputing.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[os.amperecomputing.com:replyto,os.amperecomputing.com:mid]
X-Rspamd-Queue-Id: 25224393173
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/4/26 22:42, Corey Minyard wrote:
> On Thu, Apr 02, 2026 at 07:04:31PM +0800, Jian Zhang via Openipmi-developer wrote:
>> The response timer can stay armed across device teardown. If it fires after
>> remove, the callback dereferences the SSIF context and the i2c client after
>> teardown has started.
>>
>> Cancel the timer in remove so the callback cannot run after the device is
>> unregistered.
> 
> This whole series looks good to me, and I have added it to my next tree.
> I'd like to hear from Quan, though.
> 

The whole series looks good to me too. Just a little concern on the 3/5 
part as we have not yet encountered.

Thanks for the patches
-- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
