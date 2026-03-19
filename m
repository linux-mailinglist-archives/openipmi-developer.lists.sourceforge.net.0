Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIXtNxAsvGn4twIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Mar 2026 18:02:08 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10B62CF4C1
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Mar 2026 18:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ieTn5GtLeP1ibgX7QcoB80ogVN+W+386fyVZ56wUPRc=; b=bhibyqCCbN78K1BrKzPq/uswBb
	D6r+7DVwIVGyPlGxVweT5b+ibDyevphEAMxQcpB3rW520fDkyLhw0KHCa64EpVyoUuD5zTfd43rsy
	OYYRr149C+BYOMsV+wsEet5dG64HuN+uVDkm7rCRsGpFvrTkf1DGiFaHIq28FI0gk6ec=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w3Gkd-0008H2-V9;
	Thu, 19 Mar 2026 17:01:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=4538be2276=hutter2@llnl.gov>)
 id 1w3Gkb-0008Gi-4u for openipmi-developer@lists.sourceforge.net;
 Thu, 19 Mar 2026 17:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Subject:From:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=; b=H/EIYJkaHrN1efdTFtllCsIO5q
 Hf0kNQvC3qdTclgm3pbcEVFPp5HsPPgPIRwZXPbQU2YxNWsctkWRxjr6TCDquv1npJrlI0808jrhR
 h6LV82Sfz+61qKS5G4Nq2qvj43KMV+zMqiZGyPrJyCDlNHS5+fz4u3En1CuHxcGkLdOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Subject:From:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=; b=C
 /eMmc1OnhG5EpvLD3ePrP039OY8ZrVV45wgVZg9VftzdrScc/9vDBxcaudHpg0GuWSy1HmndmHZd9
 Q3uoOYwdoFgqcDGko1UiICfkDDJz3w0kHawWzI4kZpRg1ExBT87NNtwS73zbIlF0HyD0b5pab0AE4
 L995WjviR5SDdMmQ=;
Received: from mx0e-00379502.gpphosted.com ([67.231.147.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w3Gka-0005YZ-5O for openipmi-developer@lists.sourceforge.net;
 Thu, 19 Mar 2026 17:01:37 +0000
Received: from pps.filterd (m0422211.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.7/8.18.1.7) with ESMTP id
 62JGMT5N007502; Thu, 19 Mar 2026 09:28:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=02022021-podllnl; bh=yo12AYQLxcUe8+8
 I/YsR/5ii4LkhqWYwvuoFYRSWG1k=; b=gFsmH6pYs0cPI5h5W+QWLKv5EeGty+C
 CgL2MAPLE5kKWq8Qa1Jm6DGiiY4lQdzUpp0OtTAa4XdptTZj9ujcWrH8TVfyJHbU
 XnfVmg2IL+pIzFjWuW8sd3XKDDUKWnyFqXVh2cjn2q2X5CHtW9qzg5f4UB9zCYyQ
 5Im+UnAvolrfPJi7DJP9kkqW9bY9Nd8MGAYKQ197+WxEJVpCgE7zCAER3WV3t1xf
 4rzewJV4bi0b9tYJx49yPKJtLXVQif9YBAqW9bJJVP8nAmx/E/kcQ8SUdq24lcSb
 /D/9/ctGX7zHON6SoC+vaXU9B2hn2Skajbx4pqFM8nCjmHu60MZt9tw==
Received: from ch1pr09cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11011006.outbound.protection.outlook.com
 [40.107.199.6])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 4d044yhjen-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2026 09:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R77JXNDYFjhG5VAkDLE2qQjUCQFU4iYc6AeEC649Ny8wTtyBx4oNVX2lPvqenko2eECeJxbcmbLEVmZVybE3tz5ZdGggXZlMVN8hFTdn8OsCDpxofvHUQgtil4dIxLOI5snZaLhHsvzVm8y0d6Qjj2EnM+Vcm+TBMqNn5YBxlk6lmGcKlktMLT2Z/db0EIX+JmRJrxzC8UN/uLu7Wa+hUzVU0ZrmWkZhCOsv3s1G7M4TkMotEKQPS8HBPvZBxbQKVPlsAEH07ZERn43V6dJ+HVktgVkFqiaLcBcwfMcFtlrufyQ6S59o52g6dT2fvEQCo4b3gWB3gh6rjdU507lWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=;
 b=Q+B9rK9WdQfSzDtDGSyo9AT16TG7b3hy56d3eMD/pK/WPqur0+j/CdrTpm9WOiE4fv1dpWTvOxjbdO+hTG/A9Bnucc5c1rVItQwGnpxoB1Qb/JD1bGDKdOMFS47Z3chD+w3Duxck6nzl0wzLbN8VhzY78QBHk4Q+EpytY6OcpooOC9MjCFRnmI455z/ErC0OVIOytJUZasNOSDSsJ6UZsyiJbHjMnEdud3Y3eAbZ5fRCIVDNGll1PO+SFlajMYalMUiu3KPyek8mZ2l+wHin68BNUl9LxmWY2GD0zEoNy5+rwwVOWaN+LycqmJP5p0umRJTKANzzd628qR7UX5cbxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=;
 b=pCiyrlXjBqLpr6Pe2rPVt9Zm/H6vs8rpBxcYO/iDZnHeQ3lHEKsDeKdJWmZcqJAat/YYSlLg/nARGhD9Dou4iX4KTwwCWGEZUH9JUbOPV5aQa82JaZHlJPFEqe/VQPVVanzE8e0E0sXnRx+AQPnRQCR6gZk9mlPFFL3wwcgmT6E=
Received: from SA1PR09MB11481.namprd09.prod.outlook.com (2603:10b6:806:372::6)
 by DM6PR09MB4791.namprd09.prod.outlook.com (2603:10b6:5:26f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 16:28:04 +0000
Received: from SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e]) by SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e%4]) with mapi id 15.20.9723.019; Thu, 19 Mar 2026
 16:28:04 +0000
Message-ID: <6206fce2-1e3d-4be2-bb40-2c315d11aa6e@llnl.gov>
Date: Thu, 19 Mar 2026 09:27:57 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>
X-ClientProxiedBy: LO4P123CA0420.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::11) To SA1PR09MB11481.namprd09.prod.outlook.com
 (2603:10b6:806:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB11481:EE_|DM6PR09MB4791:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e1c536c-5e65-4944-57da-08de85d47ebf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|19092799006|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: IjsVtZWEt6XoiGe++Eds9GjuBTXEniow2iB4yXrbcS2H56agaKkAdC2K4Co6XqzoFpOvpBeaC63nFm+tUhfeogU55cDr+TROrmET7xzn0o4pzAg2TuJY6fCEdUBNP4IiOa6+o5r1UKfv4WEHSdre5ta85VfPpeAACz9oHVzthUN9Rqfw5UFhbLbL9ILssWfexSwUga60M4HwsAbk2nPWOBV7hepjB4Qsy19IhD5Km/JCagXO5Ti5hYFqm9c6FdWNYbToof8zPMy5EBMm8oQ1sf4xPmYIZvHIsGBNY6z6i64y27LIvokeSWHVHD44HYlAPDCOv34t/KS28muPD45dwmYiMWv3Ddy6/dM/t+tlPAgk9+Rv72bPl0KPSU3qIVo0qyt7vv96U55ccDJEO5M2aqCItDFLZtIi1KAhuHE6JxM8IAT2tHX1SNH9Vy/pY1OSJEt8spUkAz3bithySaBBAyuJ+AMg1Hd+vuB3lI+h8ERIunxVbs7AzzzCz5HurhBeR6nXmGWdcba4Lph3C1H53wNfezHqmbpNoWpC4tIgv5ijdDKHIVHYPHPvzFwat2K2wyn7a2WnSGlbrSZeTUEgjuJNqJ27a6KEyIcosXeVsycVORQS+pIxtOSOQmQww0MYoLqCJv6S1s8jI7ezpjo70zzZGJMdOuUAvN28PXY76CaUC+dUaHssdfUrsrTN7ZfxIYyOit5iux3vlmYMy+lMtxd4IU2JiRDmd9oA3rVb6YM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB11481.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(19092799006)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SThBZkNhWm1vVUdPRlRScEdQOEZKT2VlQmhxc3RDSmpMUjRLSUZOVVc3Y2k0?=
 =?utf-8?B?OWFkMlRNNUxtSkRFNTViZlBkakNzMEsyYTNHL2hvb3g3aEl4UElVT2RQR3FU?=
 =?utf-8?B?MzdWS3Y1Qk9oNHpFeWdJRUVSVmpYMDNjNEIvQUVQYjBxWUFLamw4a2JkOEky?=
 =?utf-8?B?MFZmZEx2SVBjU1g2bDRLdEN4ZFlBVDhMckRkTE5lUWpIaFBXZENhSUZjUDRQ?=
 =?utf-8?B?aStPQlFiZTRlbGFncUIyVkJPdGVjdjNoVVBvTFE1a0tLWjNVM3drOVNhbXF5?=
 =?utf-8?B?RGJXT1dHdFkwa2xUdnEzeDFBVW02M0VtdkZnZ01yYjFvRXkrVTlNaHlGd1V1?=
 =?utf-8?B?VmQ4WE5La3dqODJNbWNsQ0NORXltNklXS1AzNGJ5WW1sQ3dLbFh4dGNSc1c4?=
 =?utf-8?B?WGU3b2hEVmllaFY4K3F5b2gxeDNvOU5xMWVhL3ppRWYvSWF0L2JQWG1pcUlE?=
 =?utf-8?B?eVNFcC9qUGw4V09BK2JCSkhFdWdNMHVSaFdmNU0yMHM0Mk1yZ2twSVYvNi9R?=
 =?utf-8?B?KzhmRWZHNXFZS09sQkw2R0gvYnYwbXdxRUJ2Wi80K2cwNkFOdWN2RUJGVUxl?=
 =?utf-8?B?Nk1Gb3R5RFdORkJ1REpia0FpeVNKWmdXM2xhYUxJdE1TdkN0L09kb2ZtNWlm?=
 =?utf-8?B?cWlKWEVyWXo3SG1ZOEswdXJGa1BoNDhQTW9aL2EvTDJOb0NIZU5aVjFkNm14?=
 =?utf-8?B?N2dudDBBUlRKYmM4LzMrSGlaWjBKYTVLN00rZkRSQ3N0K1B3TEZlTzkvT1lD?=
 =?utf-8?B?c29DTEdiVTVUMTNGQXRsemp5cU4xVHRycUZ1b0FmU0NpWmM3ck9ibTNRZWJF?=
 =?utf-8?B?M2hnQjhpeHNMTTQ3di82QXZtWUI5SjQzWVJpamxEWS8xWnpXa0FSdjBraEt5?=
 =?utf-8?B?dVJtaTV1cTNrK1B4S1RraTByd3V0WVUzdUJhakdoYTF0MUZ2bkdlWkZSblBn?=
 =?utf-8?B?UC92WTNqT0ZGSWpmY3g0TU5hWmNkZytHUGNSQ0loYUNFT1B3cWJxbjhHUWFG?=
 =?utf-8?B?NnMrY25qUC9KbkJGQTZOblNRUjVXMVExdGRFZllycENXUDNvNEtKQjY0MC85?=
 =?utf-8?B?aS9zU1lPQjdpN3hWdk9aOXJyRWxyUnBiMlpzQnpETkV4T3FoL1h6VHdpM1hE?=
 =?utf-8?B?b0pwdC8rMVVmenNCMXl4a0JNS24rQWJEY2tubmdvSVVmWkZPNVFYV3VBV3By?=
 =?utf-8?B?d1U4dmVET2VKcElDUnU5Lyt2QjRBdEQyeVhPcTFxd1hnSEFNSHpKV3IxRDhB?=
 =?utf-8?B?SHk4Y1phODhHQnhRVWQ4clQyUTgwN24yTXIyWEQ3czBHVnd1VEU3b0xFYWYw?=
 =?utf-8?B?eVJvSG5VOUtTUC9FODR2NkxPT2hpTjRqZXpDMUNLNmZmbVlROUJ4QXgvd1hp?=
 =?utf-8?B?RE9OamZKWk5BZUVsVklYUXhSR3BCZU9OcEpLMEVmVWRHNUd6M2sxdTZzRndj?=
 =?utf-8?B?d1M3S21MM1l4QzUzdCtzRDNDYkQxZnMxRHJnVTJZaEp4UTZrOTRDMVZSZitJ?=
 =?utf-8?B?RnFWTXVOeXFITm9UR0tUWUdlNXZpRkErNUFmNEtNeEJxdGhWL2dlZ3JlQ1Nw?=
 =?utf-8?B?WlhFZUVhWkNBQ2YrRFVDdkwwbFpYQzBjUzZBemM2Z1doMHhSMGpNZ1ZNRkhM?=
 =?utf-8?B?ZEpuTkJ1RURQNjJSckZKaGg3TU83K0RTV1FvanFQY1IvUFJNU203SGRkU2dz?=
 =?utf-8?B?MjdIMEc3eGpKZEN3OGtjTTlMTFdpUE93R1piSUl3blYxRG1JbmszLzZQeWsw?=
 =?utf-8?B?eURJcEgxWmpyN0wvL2lZRVFHeUtJdnNxeWtoY0JScURrVHBMMXFvdldTdldG?=
 =?utf-8?B?MCtmK040Yk5DbExqbDJsUzR3eEM0UEZxZ25QQWllUlhFU1dVM0ZRWWtySWt4?=
 =?utf-8?B?Y256N1A1UUk1OFdic25mLzlDTi93TVl0ZHBpTW1FUzF6UnA0V3VWa3lWcjZp?=
 =?utf-8?B?N1VHYmg5dksyQ1ZNNnJ1ZGV6S1lkamlMYzJjZEdaeEpDSnpxcHoyMWR4Umhr?=
 =?utf-8?B?Z1hxYWhqNjAzTWgvTS9rL01lZk5xQUhUckY3UG04TUp6M0pRa004N0phaEh1?=
 =?utf-8?B?ZWl2SXJiVytKdUhtM0FhWWFwbEl6THFXeTQ4dXBXSTNUUkhaeWZmWlR4VERR?=
 =?utf-8?B?YjAveU1ucTBnYytGU3RSbThsUWJLYkpKd0NacDVWdi9vUmRVQjBrK001NVIz?=
 =?utf-8?B?Q3pxNWdYRzd0Y0VSdEpyOVdoRGtGN3RpK2Rjd2NFaXJLcW8rSS9SMjNtM2Yw?=
 =?utf-8?B?dFRuRXREbzhhdmFaTDdSMXlVZ3FZMm4yWlM3ekR4cHBZMElMQ09yTkFBVDFP?=
 =?utf-8?B?VUNJY2R4OTEyOG9TRFU0NEFTbW55ZlZrMEhhblRJZEVvUkxGMG9DQT09?=
X-Exchange-RoutingPolicyChecked: a6aI6K5Td0xceodYUucYLJqSR+y1o7+m49v4Qgf4rwWTt2/1o4rf5R52neeeXedExzEq5Fauhf6y9xHNpGX5/Wj5PfrOtppqEjEMx6yqQ2lwSiYkxAwenedO3aUj0pnZ6dVg3FPWRPPUHDvDTpvkjd+tsR/xqbkg1VtxGioZB0W2uS5UPBPaT3VieMAgGWV8QUwOjL964ZKJA3jcWYLg5kwNa7rGffAKlMu+t8NA1b0rbtGv7eFgjGDCiqRrBz8J9VY2xRCqS3ysChGdxzSPCJz0gIBjyu+ub3WttDxvlZTQqOjBQYl3BpSmhNUPXxSB/29cHTf/ItYUfBwT+C7UbQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: OBcbrhag6Ays0w4NzRPjEctCeTDtgViVp6k+yolshiDujN+GCvaO+vRg8vqmpgtB9pxCdyNec/zlVVs0yYqPEbrQdGIdwvdJYbTXHOc5Du0+VFU/hM4R6jeQloicpeUXOIFofPCmDA/IBmCtVkyDJi/Tx+FHWoCeAX8L2wbLOzrW4MwXvbvsD4m3MuuknmC/xg24GmVkR5JD2UOJjDCwmSQe4pN4QK6BSkKrKe+2LYEyHI3Paf9j6N7ozCI5bsetwb294VQwmPuTceQZqOdGBxCGQi1A+1SBhteAdiVlv1DdYmphx/ulV/D3kXNF89T3RJqwIL9/UdHeLYfdp6bAiZm08ajweOp/eEsbVS0tEMYv69KzpvB/8AHH4iC/3KqJ+wBcaSnC3+fIAw4kvBy0LhZh4dke7eZqQBBdOS9IFmBGurz2BGqd4Yy+goD7VFJyQ95he8LLYEfT9aL0WP9DOwFNXiPqYtcUnf/2qB2+gxAUorDfp+Z+YMHjBWHs0K7aD7xcI/MRVFS4mhyxtmAiwk05JPeraZ0eGISw3mTHqHCG3SGDVfvkFdIIjt5AHgvPWFsX5otVqs8kGkXvTH5ha0asAY7tkMm01oRGHIiDu9EzWqvauhYG4uftFVe8NRTYKdknmeEetckZ2iB0hT/AdA==
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1c536c-5e65-4944-57da-08de85d47ebf
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB11481.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 16:28:04.2579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB4791
X-Proofpoint-ORIG-GUID: -3phB98_n8S85IDmrUISl9o8vaL41mxM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEzMCBTYWx0ZWRfX/HxP/iF00BCJ
 pg3Ex4FghYGqlEZcPFvEYEdwsQg+q3vN5QUGIKTH51FSpvxlHzeXTc14pPka8z/WsUQdPytAvIN
 5HA//qFFAVlI0Dx6tz0/WDZ34iujaBFcbpkHxWfexdfQR8Jssz+0s8wto/aZYufTpm1WYLog2Xh
 XvBRbeY9M2DybgYo9KyJUyyv4/YaMNFFusY5Z4j55bM9kfXVjK7NNtjnJZ5U4gCqdW459qoSt20
 2NGK10C5inJdpK2s5sBJBeaDOUwzmdPL+PjLFAg4sLzq7lfQ67o+HX8urKcyQ20iZrQJqwonpWh
 VJMgvZzE2U11hYnsUdo725j1e+0eag7wIcGYbPyFbm2yKPLsPnpeV+VUfUO+ov7IzlAu2kJZf3U
 /4qd4bT4v3xomhZaIEQukiUBdoUTG3dCPfEC1+VTuH1PtbX/r8RxTPBvm50W6qjeCJk/9O6Au59
 zRfoL22xpJzia/2hohA==
X-Authority-Analysis: v=2.4 cv=EJYLElZC c=1 sm=1 tr=0 ts=69bc2417 cx=c_pps
 a=VNTxNQCzBE4jTPxE68l6Jg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=Ul2ihcTNv6sA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=zvN32FZK4hqnROEWhWPN:22 a=4JpznBq3qlFn44GqJNAc:22
 a=VwQbUJbxAAAA:8 a=0QafeX8dEaX0NvCQ6LkA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: -3phB98_n8S85IDmrUISl9o8vaL41mxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2603050001 definitions=main-2603190130
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add driver to control the NVMe slot LEDs on the Cray
 ClusterStor
 E1000. The driver provides hotplug attention status callbacks for the 24
 NVMe slots on the E1000. This allows users to access the E1000 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1w3Gka-0005YZ-5O
Subject: [Openipmi-developer] [PATCH v8 RESEND] Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
From: Tony Hutter via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Hutter <hutter2@llnl.gov>
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, corey@minyard.net,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	ASN_FAIL(0.00)[7.38.105.216.asn.rspamd.com:query timed out];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:helgaas@kernel.org,m:minyard@acm.org,m:alok.a.tiwari@oracle.com,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:linux-pci@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mariusz.tkaczyk@linux.intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,llnl.gov:s=02022021-podllnl,doellnl.onmicrosoft.com:s=selector1-doellnl-onmicrosoft-com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[hutter2@llnl.gov];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,llnl.gov:-,doellnl.onmicrosoft.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,llnl.gov:email,llnl.gov:replyto,llnl.gov:mid]
X-Rspamd-Queue-Id: E10B62CF4C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
The driver provides hotplug attention status callbacks for the 24 NVMe
slots on the E1000.  This allows users to access the E1000's locate and
fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
entries.  This driver uses IPMI to communicate with the E1000 controller
to toggle the LEDs.

Signed-off-by: Tony Hutter <hutter2@llnl.gov>
---
Changes in v8:
 - Remove unused variable in craye1k_get_attention_status().

Changes in v7:
 - Update sysfs-bus-pci text from feedback.
 - Add DMI dependency to Kconfig.
 - Refactor pciehp_core.c to remove CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
   code blocks.
 - Move errno.h #include into correct alphabetical order.
 - Add comment describing the reasoning for the debugfs counters.
 - Move craye1k_init() call from pcie_hp_init() to init_slot().
 - Make craye1k mutex global rather than in craye1k->lock.  This enables
   handling of craye1k_[get|set]_attention_status() calls before the craye1k
   driver is initialized.
 - Do driver cleanup on craye1k_smi_gone().

Changes in v6:
 - Change some dev_info_ratelimited() calls to dev_info().
 - Don't call craye1k_init() if pcie_port_service_register() fails.
 - Fix stray indent in #define CRAYE1K_POST_CMD_WAIT_MS

Changes in v5:
 - Removed unnecessary ipmi_smi.h #include.
 - Added WARN_ON() to craye1k_do_message() to sanity check that craye1k->lock
   is held.
 - Added additional comments for when craye1k->lock should be held.

Changes in v4:
 - Fix typo in Kconfig: "is it" ->  "it is"
 - Rename some #defines to CRAYE1K_SUBCMD_*
 - Use IS_ERR() check in craye1k_debugfs_init()
 - Return -EIO instead of -EINVAL when LED value check fails

Changes in v3:
 - Add 'attention' values in Documentation/ABI/testing/sysfs-bus-pci.
 - Remove ACPI_PCI_SLOT dependency.
 - Cleanup craye1k_do_message() error checking.
 - Skip unneeded memcpy() on failure in __craye1k_do_command().
 - Merge craye1k_do_command_and_netfn() code into craye1k_do_command().
 - Make craye1k_is_primary() return boolean.
 - Return negative error code on failure in craye1k_set_primary().

Changes in v2:
 - Integrated E1000 code into the pciehp driver as an built-in
   extention rather than as a standalone module.
 - Moved debug tunables and counters to debugfs.
 - Removed forward declarations.
 - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
   than using NPEM/_DSM or led_classdev as suggested.  The "attention"
   interface is more beneficial for our site, since it allows us to
   control the NVMe slot LEDs agnostically across different enclosure
   vendors and kernel versions using the same scripts.  It is also
   nice to use the same /sys/bus/pci/slots/<slot>/ sysfs directory for
   both slot LED toggling ("attention") and slot power control
   ("power").
---
 Documentation/ABI/testing/sysfs-bus-pci |  21 +
 MAINTAINERS                             |   5 +
 drivers/pci/hotplug/Kconfig             |  10 +
 drivers/pci/hotplug/Makefile            |   3 +
 drivers/pci/hotplug/pciehp.h            |  20 +
 drivers/pci/hotplug/pciehp_core.c       |  20 +-
 drivers/pci/hotplug/pciehp_craye1k.c    | 687 ++++++++++++++++++++++++
 7 files changed, 765 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c

diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
index 92debe879ffb..8536d2ff30d1 100644
--- a/Documentation/ABI/testing/sysfs-bus-pci
+++ b/Documentation/ABI/testing/sysfs-bus-pci
@@ -231,6 +231,27 @@ Description:
 		    - scXX contains the device subclass;
 		    - iXX contains the device class programming interface.
 
+What:		/sys/bus/pci/slots/.../attention
+Date:		February 2025
+Contact:	linux-pci@vger.kernel.org
+Description:
+		The attention attribute is used to read or write the attention
+		status for an enclosure slot.  This is often used to set the
+		slot LED value on a NVMe storage enclosure.
+
+		Common values:
+		0 = OFF
+		1 = ON
+		2 = blink
+
+		Using the Cray ClusterStor E1000 extensions:
+		0 = fault LED OFF, locate LED OFF
+		1 = fault LED ON,  locate LED OFF
+		2 = fault LED OFF, locate LED ON
+		3 = fault LED ON,  locate LED ON
+
+		Other values are no-op, OFF, or ON depending on the driver.
+
 What:		/sys/bus/pci/slots/.../module
 Date:		June 2009
 Contact:	linux-pci@vger.kernel.org
diff --git a/MAINTAINERS b/MAINTAINERS
index 9ac254f4ec41..861576d60a36 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6543,6 +6543,11 @@ S:	Maintained
 F:	Documentation/filesystems/cramfs.rst
 F:	fs/cramfs/
 
+CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS
+M:	Tony Hutter <hutter2@llnl.gov>
+S:	Maintained
+F:	drivers/pci/hotplug/pciehp_craye1k.c
+
 CRC LIBRARY
 M:	Eric Biggers <ebiggers@kernel.org>
 R:	Ard Biesheuvel <ardb@kernel.org>
diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kconfig
index 3207860b52e4..3cb84e5e13e9 100644
--- a/drivers/pci/hotplug/Kconfig
+++ b/drivers/pci/hotplug/Kconfig
@@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390
 
 	  When in doubt, say Y.
 
+config HOTPLUG_PCI_PCIE_CRAY_E1000
+	bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
+	depends on DMI && HOTPLUG_PCI_PCIE && IPMI_HANDLER=y
+	help
+	  Say Y here if you have a Cray ClusterStor E1000 and want to control
+	  your NVMe slot LEDs.  Without this driver it is not possible
+	  to control the fault and locate LEDs on the E1000's 24 NVMe slots.
+
+	  When in doubt, say N.
+
 endif # HOTPLUG_PCI
diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Makefile
index 40aaf31fe338..82a1f0592d0a 100644
--- a/drivers/pci/hotplug/Makefile
+++ b/drivers/pci/hotplug/Makefile
@@ -66,6 +66,9 @@ pciehp-objs		:=	pciehp_core.o	\
 				pciehp_ctrl.o	\
 				pciehp_pci.o	\
 				pciehp_hpc.o
+ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+pciehp-objs		+=	pciehp_craye1k.o
+endif
 
 shpchp-objs		:=	shpchp_core.o	\
 				shpchp_ctrl.o	\
diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp.h
index debc79b0adfb..3a8173f3e159 100644
--- a/drivers/pci/hotplug/pciehp.h
+++ b/drivers/pci/hotplug/pciehp.h
@@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct hotplug_slot *h_slot, u8 *status);
 
 int pciehp_slot_reset(struct pcie_device *dev);
 
+#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+int craye1k_init(void);
+bool is_craye1k_board(void);
+int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot, u8 *status);
+int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot, u8 status);
+#else
+#define craye1k_init() (0)
+#define craye1k_get_attention_status NULL
+#define craye1k_set_attention_status NULL
+#endif
+
 static inline const char *slot_name(struct controller *ctrl)
 {
 	return hotplug_slot_name(&ctrl->hotplug_slot);
@@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(struct hotplug_slot *hotplug_slot)
 	return container_of(hotplug_slot, struct controller, hotplug_slot);
 }
 
+static inline bool is_craye1k_slot(struct controller *ctrl)
+{
+#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+	return (PSN(ctrl) >= 1 && PSN(ctrl) <= 24 && is_craye1k_board());
+#else
+	return false;
+#endif
+}
+
 #endif				/* _PCIEHP_H */
diff --git a/drivers/pci/hotplug/pciehp_core.c b/drivers/pci/hotplug/pciehp_core.c
index f59baa912970..3e8e2b3069bf 100644
--- a/drivers/pci/hotplug/pciehp_core.c
+++ b/drivers/pci/hotplug/pciehp_core.c
@@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)
 	} else if (ctrl->pcie->port->hotplug_user_indicators) {
 		ops->get_attention_status = pciehp_get_raw_indicator_status;
 		ops->set_attention_status = pciehp_set_raw_indicator_status;
+	} else if (is_craye1k_slot(ctrl)) {
+		/*
+		 * The Cray E1000 driver controls slots 1-24.  Initialize the
+		 * Cray E1000 driver when slot 1 is seen.
+		 */
+		if (PSN(ctrl) == 1) {
+			retval = craye1k_init();
+			if (retval) {
+				ctrl_err(ctrl,
+					 "Error loading Cray E1000 extensions");
+				kfree(ops);
+				return retval;
+			}
+		}
+		ops->get_attention_status = craye1k_get_attention_status;
+		ops->set_attention_status = craye1k_set_attention_status;
 	}
 
 	/* register this slot with the hotplug pci core */
@@ -376,8 +392,10 @@ int __init pcie_hp_init(void)
 
 	retval = pcie_port_service_register(&hpdriver_portdrv);
 	pr_debug("pcie_port_service_register = %d\n", retval);
-	if (retval)
+	if (retval) {
 		pr_debug("Failure to register service\n");
+		return retval;
+	}
 
 	return retval;
 }
diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/hotplug/pciehp_craye1k.c
new file mode 100644
index 000000000000..9c5bee81fdf8
--- /dev/null
+++ b/drivers/pci/hotplug/pciehp_craye1k.c
@@ -0,0 +1,687 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022-2024 Lawrence Livermore National Security, LLC
+ */
+/*
+ * Cray ClusterStor E1000 hotplug slot LED driver extensions
+ *
+ * This driver controls the NVMe slot LEDs on the Cray ClusterStore E1000.
+ * It provides hotplug attention status callbacks for the 24 NVMe slots on
+ * the E1000.  This allows users to access the E1000's locate and fault
+ * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs entries.
+ * This driver uses IPMI to communicate with the E1000 controller to toggle
+ * the LEDs.
+ *
+ * This driver is based off of ibmpex.c
+ */
+
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/dmi.h>
+#include <linux/errno.h>
+#include <linux/ipmi.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/pci_hotplug.h>
+#include <linux/random.h>
+#include "pciehp.h"
+
+/* Cray E1000 commands */
+#define CRAYE1K_CMD_NETFN       0x3c
+#define CRAYE1K_CMD_PRIMARY     0x33
+#define CRAYE1K_CMD_FAULT_LED   0x39
+#define CRAYE1K_CMD_LOCATE_LED  0x22
+
+/* Subcommands */
+#define CRAYE1K_SUBCMD_GET_LED		0x0
+#define CRAYE1K_SUBCMD_SET_LED		0x1
+#define CRAYE1K_SUBCMD_SET_PRIMARY	0x1
+
+/*
+ * Milliseconds to wait after get/set LED command.  200ms value found though
+ * experimentation
+ */
+#define CRAYE1K_POST_CMD_WAIT_MS	200
+
+struct craye1k {
+	struct device *dev;   /* BMC device */
+	struct mutex lock;
+	struct completion read_complete;
+	struct ipmi_addr address;
+	struct ipmi_user *user;
+	int iface;
+
+	long tx_msg_id;
+	struct kernel_ipmi_msg tx_msg;
+	unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];
+	unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];
+	unsigned long rx_msg_len;
+	unsigned char rx_result;	/* IPMI completion code */
+
+	/* Parent dir for all our debugfs entries */
+	struct dentry *parent;
+
+	/* debugfs stats */
+	u64 check_primary;
+	u64 check_primary_failed;
+	u64 was_already_primary;
+	u64 was_not_already_primary;
+	u64 set_primary;
+	u64 set_initial_primary_failed;
+	u64 set_primary_failed;
+	u64 set_led_locate_failed;
+	u64 set_led_fault_failed;
+	u64 set_led_readback_failed;
+	u64 set_led_failed;
+	u64 get_led_failed;
+	u64 completion_timeout;
+	u64 wrong_msgid;
+	u64 request_failed;
+
+	/* debugfs configuration options */
+
+	/* Print info on spurious IPMI messages */
+	bool print_errors;
+
+	/* Retries for kernel IPMI layer */
+	u32 ipmi_retries;
+
+	/* Timeout in ms for IPMI (0 = use IPMI default_retry_ms) */
+	u32 ipmi_timeout_ms;
+
+	/* Timeout in ms to wait for E1000 message completion */
+	u32 completion_timeout_ms;
+};
+
+/*
+ * Make our craye1k a global so get/set_attention_status() can access it.
+ * This is safe since there's only one node controller on the board, and so it's
+ * impossible to instantiate more than one craye1k.
+ */
+static struct craye1k *craye1k_global;
+static DEFINE_MUTEX(craye1k_lock);
+
+/*
+ * The E1000 command timeout and retry values were found though experimentation
+ * by looking at the error counters.  Keep the counters around to troubleshoot
+ * any issues with our current timeout/retry values.
+ */
+static struct dentry *
+craye1k_debugfs_init(struct craye1k *craye1k)
+{
+	umode_t mode = 0644;
+	struct dentry *parent = debugfs_create_dir("pciehp_craye1k", NULL);
+
+	if (IS_ERR(parent))
+		return NULL;
+
+	debugfs_create_x64("check_primary", mode, parent,
+			   &craye1k->check_primary);
+	debugfs_create_x64("check_primary_failed", mode, parent,
+			   &craye1k->check_primary_failed);
+	debugfs_create_x64("was_already_primary", mode, parent,
+			   &craye1k->was_already_primary);
+	debugfs_create_x64("was_not_already_primary", mode, parent,
+			   &craye1k->was_not_already_primary);
+	debugfs_create_x64("set_primary", mode, parent,
+			   &craye1k->set_primary);
+	debugfs_create_x64("set_initial_primary_failed", mode, parent,
+			   &craye1k->set_initial_primary_failed);
+	debugfs_create_x64("set_primary_failed", mode, parent,
+			   &craye1k->set_primary_failed);
+	debugfs_create_x64("set_led_locate_failed", mode, parent,
+			   &craye1k->set_led_locate_failed);
+	debugfs_create_x64("set_led_fault_failed", mode, parent,
+			   &craye1k->set_led_fault_failed);
+	debugfs_create_x64("set_led_readback_failed", mode, parent,
+			   &craye1k->set_led_readback_failed);
+	debugfs_create_x64("set_led_failed", mode, parent,
+			   &craye1k->set_led_failed);
+	debugfs_create_x64("get_led_failed", mode, parent,
+			   &craye1k->get_led_failed);
+	debugfs_create_x64("completion_timeout", mode, parent,
+			   &craye1k->completion_timeout);
+	debugfs_create_x64("wrong_msgid", mode, parent,
+			   &craye1k->wrong_msgid);
+	debugfs_create_x64("request_failed", mode, parent,
+			   &craye1k->request_failed);
+
+	debugfs_create_x32("ipmi_retries", mode, parent,
+			   &craye1k->ipmi_retries);
+	debugfs_create_x32("ipmi_timeout_ms", mode, parent,
+			   &craye1k->ipmi_timeout_ms);
+	debugfs_create_x32("completion_timeout_ms", mode, parent,
+			   &craye1k->completion_timeout_ms);
+	debugfs_create_bool("print_errors", mode, parent,
+			    &craye1k->print_errors);
+
+	/* Return parent dir dentry */
+	return parent;
+}
+
+/*
+ * craye1k_msg_handler() - IPMI message response handler
+ */
+static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
+{
+	struct craye1k *craye1k = user_msg_data;
+
+	if (msg->msgid != craye1k->tx_msg_id) {
+		craye1k->wrong_msgid++;
+		if (craye1k->print_errors) {
+			dev_warn_ratelimited(craye1k->dev,
+					     "rx msgid %ld != %ld",
+					     msg->msgid, craye1k->tx_msg_id);
+		}
+		ipmi_free_recv_msg(msg);
+		return;
+	}
+
+	/* Set rx_result to the IPMI completion code */
+	if (msg->msg.data_len > 0)
+		craye1k->rx_result = msg->msg.data[0];
+	else
+		craye1k->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;
+
+	if (msg->msg.data_len > 1) {
+		/* Exclude completion code from data bytes */
+		craye1k->rx_msg_len = msg->msg.data_len - 1;
+		memcpy(craye1k->rx_msg_data, msg->msg.data + 1,
+		       craye1k->rx_msg_len);
+	} else {
+		craye1k->rx_msg_len = 0;
+	}
+
+	ipmi_free_recv_msg(msg);
+
+	complete(&craye1k->read_complete);
+}
+
+static const struct ipmi_user_hndl craye1k_user_hndl = {
+	.ipmi_recv_hndl = craye1k_msg_handler
+};
+
+static void craye1k_new_smi(int iface, struct device *dev)
+{
+	int rc;
+	struct craye1k *craye1k;
+
+	craye1k = kzalloc(sizeof(*craye1k), GFP_KERNEL);
+	if (!craye1k)
+		return;
+
+	craye1k->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
+	craye1k->address.channel = IPMI_BMC_CHANNEL;
+	craye1k->iface = iface;
+	craye1k->dev = dev;
+	craye1k->tx_msg.data = craye1k->tx_msg_data;
+	craye1k->ipmi_retries = 4;
+	craye1k->ipmi_timeout_ms = 500;
+	craye1k->completion_timeout_ms = 300;
+
+	init_completion(&craye1k->read_complete);
+
+	dev_set_drvdata(dev, craye1k);
+
+	rc = ipmi_create_user(craye1k->iface, &craye1k_user_hndl, craye1k,
+			      &craye1k->user);
+	if (rc < 0) {
+		dev_err(dev, "Unable to register IPMI user, iface %d\n",
+			craye1k->iface);
+		kfree(craye1k);
+		dev_set_drvdata(dev, NULL);
+		return;
+	}
+
+	mutex_lock(&craye1k_lock);
+
+	/* There's only one node controller so driver data should not be set */
+	WARN_ON(craye1k_global);
+
+	craye1k_global = craye1k;
+	craye1k->parent = craye1k_debugfs_init(craye1k);
+	mutex_unlock(&craye1k_lock);
+	if (!craye1k->parent)
+		dev_warn(dev, "Cannot create debugfs");
+
+	dev_info(dev, "Cray ClusterStor E1000 slot LEDs registered");
+}
+
+static void craye1k_smi_gone(int iface)
+{
+	pr_warn("craye1k: Got unexpected smi_gone, iface=%d", iface);
+
+	mutex_lock(&craye1k_lock);
+	if (craye1k_global) {
+		debugfs_remove_recursive(craye1k_global->parent);
+		kfree(craye1k_global);
+		craye1k_global = NULL;
+	}
+	mutex_unlock(&craye1k_lock);
+}
+
+static struct ipmi_smi_watcher craye1k_smi_watcher = {
+	.owner = THIS_MODULE,
+	.new_smi = craye1k_new_smi,
+	.smi_gone = craye1k_smi_gone
+};
+
+/*
+ * craye1k_send_message() - Send the message already setup in 'craye1k'
+ *
+ * Context: craye1k_lock is already held.
+ * Return: 0 on success, non-zero on error.
+ */
+static int craye1k_send_message(struct craye1k *craye1k)
+{
+	int rc;
+
+	rc = ipmi_validate_addr(&craye1k->address, sizeof(craye1k->address));
+	if (rc) {
+		dev_err_ratelimited(craye1k->dev, "ipmi_validate_addr() = %d\n",
+				    rc);
+		return rc;
+	}
+
+	craye1k->tx_msg_id++;
+
+	rc = ipmi_request_settime(craye1k->user, &craye1k->address,
+				  craye1k->tx_msg_id, &craye1k->tx_msg, craye1k,
+				  0, craye1k->ipmi_retries,
+				  craye1k->ipmi_timeout_ms);
+
+	if (rc) {
+		craye1k->request_failed++;
+		return rc;
+	}
+
+	return 0;
+}
+
+/*
+ * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
+ *
+ * Context: craye1k_lock is already held.
+ * Return: 0 on success, non-zero on error.
+ */
+static int craye1k_do_message(struct craye1k *craye1k)
+{
+	int rc;
+	struct completion *read_complete = &craye1k->read_complete;
+	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);
+
+	WARN_ON(!mutex_is_locked(&craye1k_lock));
+
+	rc = craye1k_send_message(craye1k);
+	if (rc)
+		return rc;
+
+	rc = wait_for_completion_killable_timeout(read_complete, tout);
+	if (rc == 0) {
+		/* timed out */
+		craye1k->completion_timeout++;
+		return -ETIME;
+	}
+
+	return 0;
+}
+
+/*
+ * __craye1k_do_command() - Do an IPMI command
+ *
+ * Send a command with optional data bytes, and read back response bytes.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on error.
+ */
+static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8 cmd,
+				u8 *send_data, u8 send_data_len, u8 *recv_data,
+				u8 recv_data_len)
+{
+	int rc;
+
+	craye1k->tx_msg.netfn = netfn;
+	craye1k->tx_msg.cmd = cmd;
+
+	if (send_data) {
+		memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len);
+		craye1k->tx_msg.data_len = send_data_len;
+	} else {
+		craye1k->tx_msg_data[0] = 0;
+		craye1k->tx_msg.data_len = 0;
+	}
+
+	rc = craye1k_do_message(craye1k);
+	if (rc == 0)
+		memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
+
+	return rc;
+}
+
+/*
+ * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
+ * @cmd: Cray E1000 specific command
+ * @send_data:  Data to send after the command
+ * @send_data_len: Data length
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: the last byte from the response or 0 if response had no response
+ * data bytes, else -1 on error.
+ */
+static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
+			      u8 send_data_len)
+{
+	int rc;
+
+	rc = __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd, send_data,
+				  send_data_len, NULL, 0);
+	if (rc != 0) {
+		/* Error attempting command */
+		return -1;
+	}
+
+	if (craye1k->tx_msg.data_len == 0)
+		return 0;
+
+	/* Return last received byte value */
+	return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
+}
+
+/*
+ * __craye1k_set_primary() - Tell the BMC we want to be the primary server
+ *
+ * An E1000 board has two physical servers on it.  In order to set a slot
+ * NVMe LED, this server needs to first tell the BMC that it's the primary
+ * server.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on error.
+ */
+static int __craye1k_set_primary(struct craye1k *craye1k)
+{
+	u8 bytes[2] = {CRAYE1K_SUBCMD_SET_PRIMARY, 1};	/* set primary to 1 */
+
+	craye1k->set_primary++;
+	return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2);
+}
+
+/*
+ * craye1k_is_primary() - Are we the primary server?
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: true if we are the primary server, false otherwise.
+ */
+static bool craye1k_is_primary(struct craye1k *craye1k)
+{
+	u8 byte = 0;
+	int rc;
+
+	/* Response byte is 0x1 on success */
+	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
+	craye1k->check_primary++;
+	if (rc == 0x1)
+		return true;   /* success */
+
+	craye1k->check_primary_failed++;
+	return false;   /* We are not the primary server node */
+}
+
+/*
+ * craye1k_set_primary() - Attempt to set ourselves as the primary server
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, -1 otherwise.
+ */
+static int craye1k_set_primary(struct craye1k *craye1k)
+{
+	int tries = 10;
+
+	if (craye1k_is_primary(craye1k)) {
+		craye1k->was_already_primary++;
+		return 0;
+	}
+	craye1k->was_not_already_primary++;
+
+	/* delay found through experimentation */
+	msleep(300);
+
+	if (__craye1k_set_primary(craye1k) != 0) {
+		craye1k->set_initial_primary_failed++;
+		return -1;	/* error */
+	}
+
+	/*
+	 * It can take 2 to 3 seconds after setting primary for the controller
+	 * to report that it is the primary.
+	 */
+	while (tries--) {
+		msleep(500);
+		if (craye1k_is_primary(craye1k))
+			break;
+	}
+
+	if (tries == 0) {
+		craye1k->set_primary_failed++;
+		return -1;	/* never reported that it's primary */
+	}
+
+	/* Wait for primary switch to finish */
+	msleep(1500);
+
+	return 0;
+}
+
+/*
+ * craye1k_get_slot_led() - Get slot LED value
+ * @slot: Slot number (1-24)
+ * @is_locate_led: 0 = get fault LED value, 1 = get locate LED value
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: slot value on success, -1 on failure.
+ */
+static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned char slot,
+				bool is_locate_led)
+{
+	u8 bytes[2];
+	u8 cmd;
+
+	bytes[0] = CRAYE1K_SUBCMD_GET_LED;
+	bytes[1] = slot;
+
+	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
+
+	return craye1k_do_command(craye1k, cmd, bytes, 2);
+}
+
+/*
+ * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a value
+ * @slot: Slot number (1-24)
+ * @is_locate_led: 0 = use fault LED, 1 = use locate LED
+ * @value: Value to set (0 or 1)
+ *
+ * Check the LED value after calling this function to ensure it has been set
+ * properly.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on failure.
+ */
+static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned char slot,
+				unsigned char is_locate_led,
+				unsigned char value)
+{
+	u8 bytes[3];
+	u8 cmd;
+
+	bytes[0] = CRAYE1K_SUBCMD_SET_LED;
+	bytes[1] = slot;
+	bytes[2] = value;
+
+	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
+
+	return craye1k_do_command(craye1k, cmd, bytes, 3);
+}
+
+/*
+ * __craye1k_get_attention_status() - Get LED value
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, -EIO on failure.
+ */
+static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
+					  u8 *status, bool set_primary)
+{
+	unsigned char slot;
+	int locate, fault;
+	struct craye1k *craye1k;
+
+	craye1k = craye1k_global;
+	slot = PSN(to_ctrl(hotplug_slot));
+
+	if (set_primary) {
+		if (craye1k_set_primary(craye1k) != 0) {
+			craye1k->get_led_failed++;
+			return -EIO;
+		}
+	}
+
+	locate = craye1k_get_slot_led(craye1k, slot, true);
+	if (locate == -1) {
+		craye1k->get_led_failed++;
+		return -EIO;
+	}
+	msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+	fault = craye1k_get_slot_led(craye1k, slot, false);
+	if (fault == -1) {
+		craye1k->get_led_failed++;
+		return -EIO;
+	}
+	msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+	*status = locate << 1 | fault;
+
+	return 0;
+}
+
+int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
+				 u8 *status)
+{
+	int rc;
+
+	if (mutex_lock_interruptible(&craye1k_lock) != 0)
+		return -EINTR;
+
+	if (!craye1k_global) {
+		/* Driver isn't initialized yet */
+		mutex_unlock(&craye1k_lock);
+		return -EOPNOTSUPP;
+	}
+
+	rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
+
+	mutex_unlock(&craye1k_lock);
+	return rc;
+}
+
+int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
+				 u8 status)
+{
+	unsigned char slot;
+	int tries = 4;
+	int rc;
+	u8 new_status;
+	struct craye1k *craye1k;
+	bool locate, fault;
+
+	if (mutex_lock_interruptible(&craye1k_lock) != 0)
+		return -EINTR;
+
+	if (!craye1k_global) {
+		/* Driver isn't initialized yet */
+		mutex_unlock(&craye1k_lock);
+		return -EOPNOTSUPP;
+	}
+
+	craye1k = craye1k_global;
+
+	slot = PSN(to_ctrl(hotplug_slot));
+
+	/* Retry to ensure all LEDs are set */
+	while (tries--) {
+		/*
+		 * The node must first set itself to be the primary node before
+		 * setting the slot LEDs (each board has two nodes, or
+		 * "servers" as they're called by the manufacturer).  This can
+		 * lead to contention if both nodes are trying to set the LEDs
+		 * at the same time.
+		 */
+		rc = craye1k_set_primary(craye1k);
+		if (rc != 0) {
+			/* Could not set as primary node.  Just retry again. */
+			continue;
+		}
+
+		/* Write value twice to increase success rate */
+		locate = (status & 0x2) >> 1;
+		craye1k_set_slot_led(craye1k, slot, 1, locate);
+		if (craye1k_set_slot_led(craye1k, slot, 1, locate) != 0) {
+			craye1k->set_led_locate_failed++;
+			continue;	/* fail, retry */
+		}
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		fault = status & 0x1;
+		craye1k_set_slot_led(craye1k, slot, 0, fault);
+		if (craye1k_set_slot_led(craye1k, slot, 0, fault) != 0) {
+			craye1k->set_led_fault_failed++;
+			continue;	/* fail, retry */
+		}
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		rc = __craye1k_get_attention_status(hotplug_slot, &new_status,
+						    false);
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		if (rc == 0 && new_status == status)
+			break;	/* success */
+
+		craye1k->set_led_readback_failed++;
+
+		/*
+		 * At this point we weren't successful in setting the LED and
+		 * need to try again.
+		 *
+		 * Do a random back-off to reduce contention with other server
+		 * node in the unlikely case that both server nodes are trying to
+		 * trying to set a LED at the same time.
+		 *
+		 * The 500ms minimum in the back-off reduced the chance of this
+		 * whole retry loop failing from 1 in 700 to none in 10000.
+		 */
+		msleep(500 + (get_random_long() % 500));
+	}
+	mutex_unlock(&craye1k_lock);
+	if (tries == 0) {
+		craye1k->set_led_failed++;
+		return -EIO;
+	}
+
+	return 0;
+}
+
+bool is_craye1k_board(void)
+{
+	return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
+}
+
+int craye1k_init(void)
+{
+	return ipmi_smi_watcher_register(&craye1k_smi_watcher);
+}
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Tony Hutter <hutter2@llnl.gov>");
+MODULE_DESCRIPTION("Cray E1000 NVMe Slot LED driver");
-- 
2.43.7



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
