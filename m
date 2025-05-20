Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 123A4ABE608
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 May 2025 23:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/SW1LCMsgUS45blpfWW+zRGmHAk/pjBY6FUeOh+NpDM=; b=jOg390GoHUlWdbJEzntin3iFry
	8pZcPttX4D0IvolAmLdD2qOjt/VaIh4yY+94XeubY8ZeU0z6pCmZK1sUKMFHZNG3bnXVm73X9kEwA
	Vg17MeOy74j4Hmn9EYj4+LJGmtRKnNsp0/KBt8gBIfJ5l+Vzsd5+Njxy76i0m3/aFPlM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uHUUn-0005vR-Fc;
	Tue, 20 May 2025 21:27:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=4235722c05=hutter2@llnl.gov>)
 id 1uHUUi-0005vJ-SP for openipmi-developer@lists.sourceforge.net;
 Tue, 20 May 2025 21:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q5aX5QiRYYCELFWWce4tDXjDVRFJmWunlR/j4Loovpg=; b=iWzEkuhNnWC3/vJHJwFH2L8xl+
 1YNlFCgnCY+jsos7aWBnCWPs3GhFMDNPwHBt9opbfhtZWFTr7Jo9h6HV/Vfgf8djuZetsBhOvd8pD
 AcbwqHDbihoI4HUGqZrUzJy4pI0MlWay+Avuq8twz6k46dF+gzG/M/qVMtBylHaPhnpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q5aX5QiRYYCELFWWce4tDXjDVRFJmWunlR/j4Loovpg=; b=bfuGTAolPL2HYRyiHvW2TmtkD1
 Ypw/qVJKxm46Ucoeg0HTjF2pNvE0AelZuEG99RWs2Zc/EoUkWfB34KMCkVl0lNI+N4/zFLBL1uapy
 r+9necnGjmjtNXBxAF8S5jB+Opqfl92U+7eBCV+HlNUjuuHT5x/aqVKGoi02x5WgrUzw=;
Received: from mx0e-00379502.gpphosted.com ([67.231.147.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uHUUg-0000Z3-6L for openipmi-developer@lists.sourceforge.net;
 Tue, 20 May 2025 21:27:28 +0000
Received: from pps.filterd (m0218361.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.2/8.18.1.2) with ESMTP id
 54KJ3vN6020254; Tue, 20 May 2025 14:26:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=02022021-podllnl;
 bh=Q5aX5QiRYYCELFWWce4tDXjDVRFJmWunlR/j4Loovpg=;
 b=Ii5LPulMhCbf5XitSI60exq1NINqdnhBZDoY2uzhNwQRTDN42cppWYEi4XN47hD5Q44z
 AmgRgYIE/sLQMJ+/LIapNUqqLDLIaqcD4tDZNceX1ZRr9+gbQipm2CZlsV0dgGqqRLoz
 aUrQ4gzNs68s/dKEZnZgvqa+NWvx7l2rvjHoCwbTMueyexKpswzSB8NneJa+ffsyENAj
 0BDwrWlzVgtQYNKQhUySjH6OgC73C9ZoFGjfysEWF7rlVJAX4heu75tNaGltKH9jvTZR
 sMsoG6PFbqttEPc0//PdQXW+G2WQaGWighTK1WBliBzLr0ukdjHHdAgehbcpHyeY0a5f hw== 
Received: from ch1pr09cu001.outbound.protection.outlook.com
 (mail-northcentralusazlp17011026.outbound.protection.outlook.com
 [40.93.20.26])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 46ryjdr9r2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 20 May 2025 14:26:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGjQhO4PmwAFXnqNPD7iP/eybqpjTKZ3t2Z71k9EiGmDTgFQFdkjsXyL08ghDBSIxvN+nLprxdH5PAVDtTPMTzkUAOpCFWr0hw46EeCtYMNgzPDEpvA9bxPNaOIcmkXUBRoKKIP23+JSHJ43+iIY0MDWNzz4KVfpKYWS3osm6SnhWXuNqew/0Zl35qjy3fdKz/lL0IUv7I39k1zLIzAOkdoETY7DETqS+ckyjNKjFNWLpacpLpHASx2lVKRf2eLZHebaLnWf02HqwqID7bk96jYSSK+gaWFxCHgD5njLm65ZMYKv/4YuG8A7W+XJmaxcUd0FAwsdF0DbGTuHsnA7nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5aX5QiRYYCELFWWce4tDXjDVRFJmWunlR/j4Loovpg=;
 b=arMMOveG3ss7AhAcBu2EuaX1KBAqFH+4jCvJzpz8KcTSU0yUYD57/HtmE96EYlzFShVKYJoSQwl615CEjihrf5V9YUBAibbaKm3frfJPerNq+9jkI1dBxNonKpjg11+GnJudwRo9Moe5owd+WdSibh6j7SKdI51+/a0HS2M0syB6vPVBoFDSi09Ic5/0HtJuMSCaxnJ3QDNM/hdrWdnx/3YI0Z+lnzO6r28BaN47jvDVmClr1NeSnVQhMQClUEEwGfY45+5EIRHFecJ2cvAyBZjNBZ4PEBE7HysCWOdDfrAy7OVvACrB1SUP42l60gbFd9tpkK02Nuz7DEh/Y/gCRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5aX5QiRYYCELFWWce4tDXjDVRFJmWunlR/j4Loovpg=;
 b=YcvHZZgo4UQlv8No96nPx0P7Vgm7c2xyptgjamUbycunA7FhDQsshHuhnh9Ku+t+FfeEHEUyvOWPZ1cBQY5iatOYXra/AyHABD31kq3tI9hwRNclp2n+EYi6UJRCK1DqyuwBaDx4EN6OJ7fscC/nQFeUWO2fsEnYC103DqxG4Jc=
Received: from BY3PR09MB8834.namprd09.prod.outlook.com (2603:10b6:a03:346::22)
 by SJ0PR09MB10881.namprd09.prod.outlook.com (2603:10b6:a03:519::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.32; Tue, 20 May
 2025 21:26:47 +0000
Received: from BY3PR09MB8834.namprd09.prod.outlook.com
 ([fe80::9fcf:fc76:1d:f39]) by BY3PR09MB8834.namprd09.prod.outlook.com
 ([fe80::9fcf:fc76:1d:f39%7]) with mapi id 15.20.8746.031; Tue, 20 May 2025
 21:26:47 +0000
Message-ID: <d60fc671-b027-4cc5-8688-ca5438a3397d@llnl.gov>
Date: Tue, 20 May 2025 14:26:42 -0700
User-Agent: Mozilla Thunderbird
To: Pavel Machek <pavel@ucw.cz>
References: <553813b6-1d44-488c-b41b-4be08e1c1733@llnl.gov>
 <aCsNMvfSWptltx5k@duo.ucw.cz>
Content-Language: en-US
In-Reply-To: <aCsNMvfSWptltx5k@duo.ucw.cz>
X-ClientProxiedBy: BY3PR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::20) To BY3PR09MB8834.namprd09.prod.outlook.com
 (2603:10b6:a03:346::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR09MB8834:EE_|SJ0PR09MB10881:EE_
X-MS-Office365-Filtering-Correlation-Id: 49b20cb4-6c36-486c-4f09-08dd97e50694
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmtFQmNtaXdOL2orbUFYTVFuUUYzTGFZMXZWUElraFJEREsxT3NOMTlDQ2lm?=
 =?utf-8?B?Si9mZ3dQNEpGT092N2hVLzZkazBRb1Jrdnl0V3BXRjlqekV2WDVoNnJ3Z2po?=
 =?utf-8?B?WHJ5NWcvYTlvdktteE5iTzFueGVKcFNpdEU0V2FwTFFTTTBoQ2o1TmNNMlpy?=
 =?utf-8?B?VlgrejJqSzZpN1dxejhpaEdLc0s4dlNTaDBHNWZFTElMMnA4TlhUSFI1QTBL?=
 =?utf-8?B?Q3UxUjhXOEhzV0hQUlVlaStQdlAyZC9YaUtKSTk3WVlULzhLRVJVOThpQ1lE?=
 =?utf-8?B?aUJFNUlvSXRkZWsyaTlXMDRKRFJ2bnMzTy9Ed0ltQllxSFRRVi9zL3NpemMz?=
 =?utf-8?B?amVhTkk0RGpwcWhscFVEU1daL3dib2tPcjhzNXVyTGtIQ3ZPWml5KzVjVWd2?=
 =?utf-8?B?T3A3T21PbVlyZXNSYS9PelhSSG8vSmNOUlM3YWxjYVc4TmxrQ0E4b25KY0kr?=
 =?utf-8?B?MTNZeXBkbnZPVitPUCs4Z01TNTBGNEFTa3VqYmVrTThFU0ZicXlDcG1RWGtY?=
 =?utf-8?B?U0R3QTVkekU5aVhnYUQ4eUk0cGI3NWVkQS9PSnRFb2hBQXlZRVlUZG82MWlt?=
 =?utf-8?B?M0pYYW1OMDRzd1Y4Ukx1OFRKWEpJbGNKN1YvaU9LRm1xNW9pWGtuUERJU21Y?=
 =?utf-8?B?M1JGclJJT0lhbjJJU0RndEQ0NlJMQlU3VGN3d2FXRXVpK3lhNXg4czI5bFNQ?=
 =?utf-8?B?ZUtzekViQ3BCVnNsUDJYWW84Z3grcEN0UEUvNUhISHN0ME9OYkE1QXQ2aStq?=
 =?utf-8?B?dlgralYzaUhvQ2RhZUNnRlYzUy90aS8zV1MwM2loeEJlY3NacE9KR29ZYitE?=
 =?utf-8?B?QTdqeW5qMlJWNnIra0QyZTd5MUZGbnRsdE0wY0lVdG5VVUJVODRYclUzTThj?=
 =?utf-8?B?RnZCNVJ1WCtJL0tlRXdVcXZ4MzNMVTZuOU91cDhzdGFuK29zSWpvQnduVzhR?=
 =?utf-8?B?Y2UwVXd3dG53SVNRRENveHhZcVdIMHA2U1FiSDBMc0MyWWdFOGRHUm1IK3l1?=
 =?utf-8?B?V0NHZFJhNGFQbGVLRUJIMkpDd3F5R1Q0RUJXQitMenZDNEZNMTFEZVhnVHB3?=
 =?utf-8?B?dnFibk9jU1FZZzJ0OE9MNVdhVHFtTGRjdEZ0aThneHVRcENvYy9yZ3JVQStX?=
 =?utf-8?B?ZjY0czZFUlhEMkhyU3RjbUpsY2hhbHpJUTJQZHAxcW9YV0toaFZDTEplY1dj?=
 =?utf-8?B?Z0t0S0RQWWxkMnFCTk9JV01QZWVBYjlvYkFCcVNKcUpyamZudVJuc3FTOGhH?=
 =?utf-8?B?ZVJlV1BPbllIR2t1b0lTVjg1K0Vvc25pdG50T2dXZXRnZlJrdmljOTBFTDNT?=
 =?utf-8?B?bzJWQnZENGxyMTAvci9jVmxIbWt1WTEzMnJvK1dKNURybzEwaVNYK09WS0Zp?=
 =?utf-8?B?THJWZzRpTStHdDFHb01aci82WUZGR1grdkQ5ZmZiKzJGSzFLelowcHNDSnd1?=
 =?utf-8?B?WHRZOEJFbXp4anlFSGE3TlJoZ1poMkxZclExTnp4anhIU3gyVU4xUDZ3OStu?=
 =?utf-8?B?SVl1QWlUTDEvUGhESUtvRGwrNXZwOGJIakk1c2JwMVdrMHVrZ0E0dElEbTlS?=
 =?utf-8?B?aXNvcVBlcDgvemh1azVOdlhyd2R5UW5oaHk5NWtWWDJ5OGUvbHYvYm9mWnR5?=
 =?utf-8?B?RmxnTU04NFA0bDVLWVhxVnBFMW9KWUpPaWhic0xJYXc1VHBOT2hZa083N3Fo?=
 =?utf-8?B?d0ZDNXZwWVNHZEd0OFpiMExBS1BoTER4Z2VzK2RWTksxQ0dWNWs5MkQ0SDdL?=
 =?utf-8?B?RHBpSHRCQVNaMUk2N2Y5WFpRK1U3Qi9TWFhZdk9uSDVTVmIrWkdoNUJSLzRX?=
 =?utf-8?B?L3BmcVJGOG5nWHIxYWxqQmxFZ3ZJOUMvd0U4aCtlVE1heWwrNTBlOTBWV3U4?=
 =?utf-8?B?TU9iWWtsTFpQVUZvTU15RXhUeHNpYWhpRWpLbEZkNm54RGVBME95ejNJbjBr?=
 =?utf-8?Q?ICOrbz/hw0g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR09MB8834.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnJVMkpZT00rWld3SGFqYUc1V25RMnR0bEcxTFVOc2sreDdGd2Fqd24zczEw?=
 =?utf-8?B?OUt6NGNuRTZuc28waGJtZGNFT2JMa2Yzc0dMdjI2aHZGaGN6MDFhZHRVUFVF?=
 =?utf-8?B?UGdONEtqQlBoZVBobHY5S0FjZjFBRW1oeXlvUUx5ZHhlcmx1aFhBYzFLUUZy?=
 =?utf-8?B?VlJsTDFiYU5MckRZNTVXUnJIdzIyM3pjdVc0S0lLZFB3RmNyK2FoYm5sNHF1?=
 =?utf-8?B?Q3NCbTFDNlV1TFZBZzlSamt1aDJrQ2xsUUVGNnk4bVlsYW5LbEJ4RVF5a1Zp?=
 =?utf-8?B?Yk9LZ25GOFlwOWYzVUhUeUN3MUFYRllmZ2FkZDF4WWo0L1A5ZWhzSkJSWWtV?=
 =?utf-8?B?YlI5Tk9YcWFtR1FGcmpuM3dyNEh5MEwvNTE2bjJZWjhrSlkxNGFXcXVjejRE?=
 =?utf-8?B?V1BNTCtRTGsrbkJHemZOWEYxQkJ3RWNRK1BXZlRTWlRWZUVoZE1KSURMd2J5?=
 =?utf-8?B?UnpVZTNPUEcxNVEramcrclNzTHhJdm9nb0JFZVpra0lrTEFqL0hKSVJ0T1RW?=
 =?utf-8?B?akszMTZ2ZHBBVzMwd0sySHBIOWU3a3ZScnNYa3RWU2pyUmZTWE5iZmhiNlRu?=
 =?utf-8?B?ZFptYitrTVU3eHF5SmNkakl1TkhwVWdlbnA3TXQ5b1F4N0h1ZlpRV1ZkRElB?=
 =?utf-8?B?S1pWVFZLLzFHajJuQmVIUG1QL3g1TXlOencreGh5d0xkem04Q1hZRlA1Sjho?=
 =?utf-8?B?SzlDd2dYYks1Lzh5UlpnbGt1TEV6R2RiUHVoUUVrdlc4c3dGN0ZJV0I5NkxD?=
 =?utf-8?B?bHFyRHE0c0dsc3JicUwySlR1VjEzaGs2R25aaVV4MWl0YUJUS1hWSnpJdkE3?=
 =?utf-8?B?aVArT3k3S1BlQlhCd2ZDRGtkUGFjUjVPVlh1UmgvQUR5WHJKOWhMTTRKa2FN?=
 =?utf-8?B?TVNkTmFPSlBidXBUblRGV3YzNVRMeXZUUWIwLzRxTENyaThyOE9kVER3aDM4?=
 =?utf-8?B?TG0vU1oxWC9nWmdUVEc5OVY0aVpGQS9xT0tyc1JRcG83MWUyYklabXVOSEs2?=
 =?utf-8?B?WTJab0JWNGdkZVhwWjRrL1QvUUg2ZytXSnRDU1Q1cENOVzkzVVJZOFgzSk9O?=
 =?utf-8?B?dDJKcXNqRSsycjB6ZXdwaTVsSDJvQU11aFR2WkVPY0srdS9CZXVKWXNjcjMr?=
 =?utf-8?B?SFJBdyt0aDhqdDZCcmNmZ081dU1JU1cxaWV1d0ErOTZVZUFhUklzc0swQU5m?=
 =?utf-8?B?T3MyOENteG5lUjVEKzBDbUJ1T3JjQm9QZGtTWVpORGVLYzBXMkloeWtaNHRC?=
 =?utf-8?B?dHh5WjRMYjAyb1FhZ1dBUjFvWmdDdWVGd1JWNGx0MGpDK2pIY0xZMWNFaW1U?=
 =?utf-8?B?OUZjbDlCaFZpNjZDb1ZJbnYvWkI2L1lEN2U3Y0dTZ3R2ZXJSdWVDVTFvd2da?=
 =?utf-8?B?U29mZ2JodnV3NlBZYXREMWJvZU5xOUFuZ2xTU1VUK3JBZWFYWHlxSnB4NmFD?=
 =?utf-8?B?T0JpSzFYeFozYjZvQWQ2dS91WnFTa1pma0dWSDJpbTZkTERmdDNJN0s2S202?=
 =?utf-8?B?bUFPeVRmUS9PU1dQK0Z5MTUwWnlmWjZRYytVVERadTdpUTVtaC9NbmlXOVZX?=
 =?utf-8?B?SG92UkJtajN1Q0R3V0psN2xiK0tKek0yZWlWT000Ym96clYxQTRtdVo5L0xq?=
 =?utf-8?B?eFgwa0krdDVzQzUvZGFQSUtETDRlRjZHcy9JNEovTXVBYXpTQWg1M0lvdG5j?=
 =?utf-8?B?eDNZK3pFdHc2SmNsVWJZT0FzRENGNzByN2w5RFZITDRrVkZKQk9SczNhYVpJ?=
 =?utf-8?B?Vnk5SkFxOWlqSjhwMUJ2eVZveGxzR2ltekJZVEtVSzgvaG1MdW93Ymo2VkdD?=
 =?utf-8?B?OWQvazRVZjZuRXl4andOVlZlcEkvNjFsOWVLZERuQWRCT21oWEJERE1CNGdE?=
 =?utf-8?B?TlFkMWFKcTlKaXU2OERSZWVHemo4WWcwYy9hdnZzekFiMFhBNmh1cE04M1pB?=
 =?utf-8?B?NzcvQURQeFdNSUVFYUpJNTQrRE11LzFKQUZucmhEZXpHRWNnbWx5Q3hKWDFn?=
 =?utf-8?B?dko0Y21vZmJQcktrb1M0U0trZVh6QVVicHgvUlVDdWRuS1NydHptdDUxdllH?=
 =?utf-8?B?T0xKUlVuMlRidWx6WHVHL0dyZVN4SFhyenZkWmtCOHZHeVY1dkYwdzNhVTVO?=
 =?utf-8?Q?xR5/QcEDmbNTT/ND1793nCAsW?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: /wSnomQ5kCkO45D7WYaoIHKM74cp4OEQ3uB4/q3kP1NRlr+zH9Os4wNqikviQ6PDDYUlrsvXtrJTuLWDOL9/ZFcAy3kL9GV0cbTRJc8yRHJVZBUrJVHCksUnDqLU1G2Bt6lcuQr6iEhLqsfcTf7Xc86YCWD+VyglbZ9AORdYwoWeCXoKLIGrs+y4TkR2LhNtjTbowShIolHRZ9cyuQT2efXlonhlw8Ct9yCwwPVW2vokgnELaQqF4mlZhTOwWzOD4aYZDJ69JpqJ3PII9c+UMwijeV6QB74K5RD0NYTfFEj8yAAIs6TBr4FsIR5JuOlpmfxlJP+yM1TfP3h6BTLF+Ep/BiVpxix5zPNTDcgavLIf9lW8UBD5wmhp0B+XdCuUOPZGdAlDI0FD3ZdGjHL+fpMaMI9Ftzzu8T7vY7fjaGPdgcwzbdvZRpLR8rUke4HLvgb7/Jq9TGlt2trth+kMOcVqlX0Jm01aPCE5TQO1hzxWRMu+Ws1rB9Nkq49MNb2CyHFG4WnFOdoFY1KFBSgydzW22im+RA3vnHFgiAx7iZTDZe2cxGn9AllGvOOYGGNAyYm34AWdrAvdTOJf8ywb7XHd0/32DmsWx0U3yhjrMqFQHOiD+axJWesAzlW/AqSFkJAOjDbIUH7tNMfNCi67+A==
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b20cb4-6c36-486c-4f09-08dd97e50694
X-MS-Exchange-CrossTenant-AuthSource: BY3PR09MB8834.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 21:26:47.1545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB10881
X-Proofpoint-ORIG-GUID: 33RvXsXSgBS6JsMAQf6CTicGo4Wsyik2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE3MyBTYWx0ZWRfX4wt6NATUwIte
 bFij+nBw+uhkN7osZ9SHR6AvihvjnHNFNb+WGhfqeBo90rJ3iziv72ghOjd8nndt+3xgZkgeeeU
 8+FfeJ3wQaUh22CluhNOHirlY9ysVPp8NxvTq3J4lGbOwd9J4Pc6Ks30n9w7CFtMAYda2IqZTSF
 57qqfNjqxhW/qr1lM++p/jtvjc2Lp1XJnGD2dLs2+p2vRoEiAJSVxX/pK3RZOXEx2BzZc62wcTv
 FYxgbKsSe2h7c7+mWJBCqq1VttpKV1drs3Bk7MCP0CLEl1mS9TY3BP/6huziI+rF/eiwUiPIHjd
 ReK5TOnUO31hhozmyaSr7YJb/kVSpTpF37jlIFNNITyBDv19hY7zKBTDA2WV4PwD2VyPH6aHlak
 yVMRYMjG
X-Proofpoint-GUID: 33RvXsXSgBS6JsMAQf6CTicGo4Wsyik2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0
 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=650 adultscore=0
 impostorscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505200173
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Pavel > We have LED subsystem. > > And this should use
 it. This came up in an earlier discussion, and I touched on it in my changelog:
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: llnl.gov]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.231.147.129 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.231.147.129 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.147.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.8 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1uHUUg-0000Z3-6L
Subject: Re: [Openipmi-developer] [PATCH v3 RESEND] PCI: Introduce Cray
 ClusterStor E1000 NVMe slot LED driver
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
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-leds@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Pavel

> We have LED subsystem.
>
> And this should use it.

This came up in an earlier discussion, and I touched on it in my changelog:

 - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
   than using NPEM/_DSM or led_classdev as suggested.  The "attention"
   interface is more beneficial for our site, since it allows us to
   control the NVMe slot LEDs agnostically across different enclosure
   vendors and kernel versions using the same scripts.

Basically, /sys/bus/pci/slots/<slot>/attention is already the standard way to control PCI slot LEDs.  Our management scripts have used it for years to mark faulted drives for replacement.

I think you can make the case that the PCI hotplug subsystem itself should be updated to export their "attention" values via the LED subsystem.  Then all PCI hotplug slots (including Cray E1000) would be exported via the LED subsystem.  That work goes beyond the scope of this driver though.

-Tony


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
