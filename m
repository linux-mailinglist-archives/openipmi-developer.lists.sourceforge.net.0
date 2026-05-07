Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +ObSOUnB/GnSTAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 07 May 2026 18:43:53 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1564EC605
	for <lists+openipmi-developer@lfdr.de>; Thu, 07 May 2026 18:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3meyCiUMS34byrnogUZXhxEHtX7FhVR6zdQkq6KI4I=; b=kDULPiaYA2mrKxovYdq9EpRtNQ
	cw8X1HzbrR4koE7MhZ5fnpaTfjZu67QhUWedNQ2ZSLVxFGN6JUggHHTNkgbYwyE0V0h3zqzLdJnuS
	nx9M2jxQw4NqMfz7udOeyUHKKkgt8QhTMnmczPJASQEZfgb9P+vAoOZfmISWQgQYciPE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wL1p7-000487-Tt;
	Thu, 07 May 2026 16:43:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=65870f789f=hutter2@llnl.gov>)
 id 1wL1p6-000481-2l for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 16:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOB1pB8CYgPa7WCv08YHKAmG5V8fQbLbxBUOnXPDDtY=; b=AlTJn5Xayx//Ac5ocXxXW+P2Jt
 7qLtVOoFI/W6eMf17fj1HEJFKA+XUkyVGsNwsedP9YcY7LRcLIW5nO4mIEVF9FSckpR0gMywX1tum
 zJoCLa17wJkGYf0WTMYf28UZ2p37d8tZT8jC2aq7KNxWEiWM+ZoKgQUAoXoppUj2gRU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TOB1pB8CYgPa7WCv08YHKAmG5V8fQbLbxBUOnXPDDtY=; b=j+/HfDfiUDIa+BAJbo5eQB56i0
 qx0x0dlpg5gVpq+76g9M0W5lilzX7WPDIEOCRWqUUHpmTiO+jE3S+s2wQOzi7/igd2lB50fN/IkXh
 zxZRgvZZHm9bUJg9NwxPbc28NEAG/2Zw4ebFc4Ng+QG0Wrzz/116XICsw9/yQDpQKH0s=;
Received: from mx0f-00379502.gpphosted.com ([67.231.155.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wL1p4-0005rr-8P for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 16:43:40 +0000
Received: from pps.filterd (m0422210.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.7/8.18.1.7) with ESMTP id
 647Gepm7024035; Thu, 7 May 2026 09:42:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 02022021-podllnl; bh=TOB1pB8CYgPa7WCv08YHKAmG5V8fQbLbxBUOnXPDDtY
 =; b=UybtBk+FO0i1Kx9eCg/DREg5CcWCzo4ayv2QeyO72F+DYzsnqKpsoZhMCQB
 gbaYpzKpxNZ//Dc2h53JM3eMJSLPwDUCDA5aScVA2MYvLBQuSK/Dp2/ShWByPUD+
 eO/5AihjXToLu/E2hU2vc62VOcEp5GjPkQXSbcIqOP7S6RUG0y35wuChxfbebZtI
 FjV3rPZsXEK+H7R2XmfGmV15EMJsdwDR2fE3T2uiqrugaPoT4WYzDSm8bkcpvbui
 ETJdgU5rgRxBCE8ypEttZtw0mKfOddsYDI3H9iSzBc4FGzuA7vk0/el5NRRsIZLX
 7vqUM4hByeVd7DSBFfUQf/uMwLw==
Received: from by5pr09cu001.outbound.protection.outlook.com
 (mail-westusazon11011056.outbound.protection.outlook.com [52.101.86.56])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 4dyqrqbt4h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2026 09:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nPl2NyXR6dDRfNDg7RMxmDkHolIfZT4Z/0UmXndSvVlc6TbdcJpkpFFKgeg9PdOVJknnPyWLkRYXVk5KuubLqI8J4gDfl7hylirl3VEaMdxOP1TiLD/ePfORXiMEtmeojbuedp4KBJMUduesnpLUdoH3BDf0Wll0qQFKTQdkO6LQs9Dhdr0U1rr779WsyIxqHyAIMeoeKg3YtVxpykLSJDvTBUNHUF8RuBMGKb0hAd486oAPQhPeG17Kh+/yKz8I+9int/8hRS7yO6NyxMEZ2kSEIOHX454ATL/Uv+TN+pKTyNhnB92cbB6zq/8ClUzlliP4im7G5cthSssIdmjh1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOB1pB8CYgPa7WCv08YHKAmG5V8fQbLbxBUOnXPDDtY=;
 b=Z0K7LP+AHJjOaGFz7aKI+M/f1ek+g0/D1K1AmtRHkqS14/GbtywlP8CYl6EEETTb4J+Zd/28oAmZH8txlt0oIX1TVnqj0HruunFgOx0mb+zDj+uqke82g/e2M0maEojvtcklIdMzJBpurfI/APoLtZoF9iJE5nERolOrVQod009NhD+rUdY1pUJfjhnaNG4r2sIM1b9I26S4DwslSWbdU76Iy/oWX/nQx44DER9UQGmbifTJdXUkRIodpPMCMTQbMc5AAw534OjZGNloxtVPWFnzWIprcxizLdDE4AKCWsxYDzngZkodbp72q61cNPk4krFCF3yUTavZKG4igVyuVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOB1pB8CYgPa7WCv08YHKAmG5V8fQbLbxBUOnXPDDtY=;
 b=VGG5Y2X48CoPFSvD8WjxCMmUYhkqs0RzAriGa0VDZT8ENwcOTn24H8SEktB7zrpZFBxI1Vgtj1l4tazt3wxD7j5F1Y1yWDr1o/VBqgC1FDpdhXNmA/RSuf2CCvRvjnkxAlaMSQQKB8NVBZGKRHkgde/GrGT3i7CghQsSIuRvA5o=
Received: from SA1PR09MB11481.namprd09.prod.outlook.com (2603:10b6:806:372::6)
 by DM8PR09MB6407.namprd09.prod.outlook.com (2603:10b6:5:2e1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.18; Thu, 7 May
 2026 16:42:55 +0000
Received: from SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e]) by SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e%5]) with mapi id 15.20.9891.017; Thu, 7 May 2026
 16:42:55 +0000
Message-ID: <02a02a9d-6d8d-4c91-bdad-0a14d0211952@llnl.gov>
Date: Thu, 7 May 2026 09:42:53 -0700
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <768409a2-0593-49bd-9065-e8b93c60d4ce@llnl.gov>
 <afK8hZfnf1xk6xJ1@mail.minyard.net>
Content-Language: en-US
In-Reply-To: <afK8hZfnf1xk6xJ1@mail.minyard.net>
X-ClientProxiedBy: SJ0PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:a03:331::35) To SA1PR09MB11481.namprd09.prod.outlook.com
 (2603:10b6:806:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB11481:EE_|DM8PR09MB6407:EE_
X-MS-Office365-Filtering-Correlation-Id: ce7f916a-b2a5-45fd-399b-08deac57aff9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|19092799006|366016|56012099003|18002099003|22082099003|3023799003;
X-Microsoft-Antispam-Message-Info: ADHW8uIymOxkARpa2XcITaC89YXHIb/gFPlAnjg3Dkl0/Ml2/k86TX7hDKAaUid7yHlROdcBX4LBrttM2o7sB31p+QvpMLxH78Wg3oTQBIOSJCtYmFkuFsQ2COIE46xZVb2psSM2nz/tK9Gv5moloQRXl01hY/ZYvg4q1A9SwAGUWQ1HPIAyE3/NaGOzdXaP9rGodyeMvuWL0+2ZlSsg2qd7oj4B+Im/pbF+XlrrOiEbEXSjVzkupeAFR8qXnloO0J6A1DlIXuTPAxtpOF7nYBduRqlruq+j8WylbIlQYWMXiRKp9a8mNHwmtb4jD/TkTHb2qcr4jA3UZdXNB3b6I2mvXfKYYBpUx5rQ23QbwO4bID+dLA7Slf5uC0/Fpxsw9j6w3n6lDG1iI8gWC33xo2q/LngGbJVGq3533bno21ypHayF+1rtwzNwmUCls5A3XrW2Hetc6SSd3qJZPSrZdPqXukxDYSQYoEYHdkN2FW8iVzoVWWGlB9R90b/n2v4avoc7fEs4o8jvhzSBbPPbgge61uJdXfXCytaWdUk/tuks1KPJ/mHfYnP2ExJncdQgDvKsNgk6+Zrf8KgIaQ1Tqeo5Rsa9YuA/FOEBlVc+dGj/suELtLN95Hom+M0guw77zwm6JuYzFtU/SBDZakVxBGKNTGir10CTffS7AQptGg9OaEUs1rRFESEQ2KChXCbt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB11481.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(19092799006)(366016)(56012099003)(18002099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjlPZ3orTjB0ekZObEFLMFlDVHJFUHcyaDFoV0RGakF5d0RtVHBLRHRPOVlD?=
 =?utf-8?B?d1RpeHBoRXFvNGY4NzdadkJ6K0RWbnJIYnQ1YXVVUzN6WUVuVXVFVFhRYmVO?=
 =?utf-8?B?S0Q4YlpaRTdsdGpMMUZNQUx0KzFOVTl0bklIL2hWSjRzR2RKbVlkSDRhQkZX?=
 =?utf-8?B?UDNZNm0zNGQrOUhEZWRhd0pzb3N5YXJPeGc3dXRmaG8xM0J0YlVLa2lVZWYx?=
 =?utf-8?B?dnh6QzRONDk0aFBDZzZUb1JhK1hGSDRHVFRuc1pOY2RSVmp5Y1BiYjhLL1hT?=
 =?utf-8?B?UDJuMVJ4ZU10SGFsYmFnNVVUZFA3aWJGZ1FHVE53YU05ZHhqQUJyUHdLOXYy?=
 =?utf-8?B?V3ltSnFja09BQXV4ZkhEMkR3Z0xnbzJMZW5IWVA3YWRwcTZUeE00RHU2Ly85?=
 =?utf-8?B?Uk1LUW5VUXBOOUVNcmcwbUJhdHJVYnNUQUYxUDlDamI2WDlsbmhwTTByRjJU?=
 =?utf-8?B?T0U0TVAyWWY0NGdPQzFhRTVSUVRrV1U0azhxYnU3emxaUytBWWZsZC9LK2hP?=
 =?utf-8?B?RThnU3VQRU1OQU43L1drRGVVaHlsM1FVTysrVFlKNEJSeVcvNG43QlB3dG5Q?=
 =?utf-8?B?cTU5aDQ1bm9WYURnT2pPd1ZTZEY2dC9NTDlkemJuRklNNXRzd2tNWDNVRWFY?=
 =?utf-8?B?TGh6TGJNYXhNTXNZUi9jakF1cUxYbmtsdHdxdDN0UlNOUE5EOGpyZldyVWQz?=
 =?utf-8?B?ejNWOEorM0ZBaS9zaHpFYXc1dW9EOGdQc0xzcVZsN2dJaElaY0d2bm95dG41?=
 =?utf-8?B?VkZBMk1XSHBWNjRMak1hK2VQSldxaitsR01scEJjSkNwZ1R3bFhobkl6cHBh?=
 =?utf-8?B?cUJXekg1WnZHbHc5VXNqbFZaOG11V2pmMnRSVVMzSnFheVdqNlArMnhiTmtL?=
 =?utf-8?B?bTNnQmNyRXZMSWtsYWcxd2FhUEd0SHAxb3JmWEFzdFBOaVpwMHVNa2E3cXZE?=
 =?utf-8?B?dGZaQ1gwNnBwVSs5MnJsN05uL1RyNnRnTU5pdkxpU1F1OGpqbVRoelVGTjlU?=
 =?utf-8?B?NUhmTXBTaStCRW9sM3RMRjFmOGU0WDV5eHRqWlBBNE44bUUzNkhTRml0NmtI?=
 =?utf-8?B?VjVvQjlCZUFRdHpva0t5VmVyRDVVeGVpNDFVM0RtZ0lHMXBNaWF5UDdqb3J5?=
 =?utf-8?B?clJsaklMejFoczhaQ2RUdFF5VElmYkJOeVRTMGlOQTdseHg4Mk0zc2ZiZDNw?=
 =?utf-8?B?NjBOVW9LUHNIR2w4bTYwbWtWWkZMZFpNaVpIZUczUjVtSTdzNEFNdmJ0UmdF?=
 =?utf-8?B?N09sMUtoN1dHc0xvamthOUlLTndMNGZHUmQ1TUdBQ0dodkMyQ25aUjJZaGtv?=
 =?utf-8?B?ZDFyUDkySnRyS3c0RXNlbXkwVm5MQ2x6T1RrSVdjUTI1ZkNCNGZMS0thMHdV?=
 =?utf-8?B?aG84amRIaGR1Y01FVlBDaXIrSFZLY1BkTmlReDRhMVAvRmRYc2JnQkR2QnFO?=
 =?utf-8?B?bVIrSlJ0dnBSaVFBQzJmdituZ0JTV0hBd2p3a3JibllpendjbmkrUVEvRG02?=
 =?utf-8?B?WVNIcUlpUVA2eEVGQW1BK016eXF6KzV6QTJMSXFmOHdvbjhYSk1vYVhrUGYv?=
 =?utf-8?B?YWYwWU5LVGwyaCtYRVVVSHhsRVJ6Q1pjOFpWc1BrZWFLRzF6ZEF5THVOODQ1?=
 =?utf-8?B?MXFEYi9vcnpBcDM2SW5iOFgvcVRDd0wrWnJhQjBQRlFZeXM5MWFENngyNnFj?=
 =?utf-8?B?Q3hYaG5aNmt0TkRzMld3OFpZcVZWS2FlN1Fsb3RCd0J1RkhHNFdsWjVhTmVY?=
 =?utf-8?B?MTQxYi9mUmpCb0dwbkJMbm1uZkJISHYrd2F4dkVjaEVBNEZJcVExZThiTnYv?=
 =?utf-8?B?UXM4ZGhJS3lIRTNMbDZoT0pKOGNBNHRXMkFYU1ZjTkxsQjVyYmUzYTFIQWQ0?=
 =?utf-8?B?ZlNLemRYS3J1emdnNVRuandaSWhkQWhWdG03TGF5aG5qQjVZYUpFdVN0emJY?=
 =?utf-8?B?L2p3TU9wMHlTbm5wOU9hTHNiZURvNEdyemRCZHBtMlhiVGF4K2xBMmdMWFNv?=
 =?utf-8?B?TDYzc3RVb1MyMVlVMnVLMVp5enVjMjBldEp1ZjJwRldDRWE0NEtWMVM2T1B2?=
 =?utf-8?B?M3RoY0lQYzJHWkdsNGw1WjhTOFNLekFvYXZPdXYraldVdUVURGJabzRndzlh?=
 =?utf-8?B?K2FER21XbzVWTDQ3SEQ2MkNoZWpOcnYyOC9wY25QWngrNHdQb0haVUszUkYv?=
 =?utf-8?B?eHErby9pT3llQ002czhjWjdSUlVTaTFZdi9VQUcwWFJpeFN3QjU0aW5EMzRX?=
 =?utf-8?B?ekU2WE41dGJqa3FxNllFYTg1RmZDSlY2b2t4RTlmVVNXOEh4SUZCL3JHY2ps?=
 =?utf-8?B?UzhsdUUzdUZnU1ZiSGJueHU3UXpMQWxzRXRHSnowY0ZjbFRDV0tOQT09?=
X-Exchange-RoutingPolicyChecked: ViKRDPX5sc3Wbo0L3S6/f7SyCPrOIZMH0QhSBsk23jXpn8/qpxBvNhKRAjuWTja+lWdIrabpybVkskEkupubWqlMhQXDV0o2WkAa/toRVQW8ShoAsE8fWRtXNk6l6x4PPb9Vi0rzH4PdxJdxG3keBYpLsg7TLBKu+3hin6OZ6isK6pqzGvrQ4kiv0QsLnDtllDEXicJHal1g4soo/Ju9hnoPZtbdsdmX4Yl3TgsF5TJfh+EB1URVny9Yi1pwTgbRSU4kqiYBwofk/yls89lIFRP38c48SFmtZEaL3oF8SdjdMKBAgOFxo+bhPHAilO/Fefg0JdRW434w9PSO4BNe8g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MHhzJrRyGtmqiHlUxj6bEcPD/BM9nBZydvpi2eHfGgU0tJhiC7LMkV2JfEqjine9eNGioCUWvESaCRkUKCrf+oNm6pW1D+XRYeO7sG//qjTRvXRszfjBodvjSmQgx3KvLfssWODjSutj3iZwxDtDY7rT03ZUo/5XV7FenvgDujV0bIVgnokJAO+mEq7ZqpZTewuqR7K/N9AVvYEP+KJybLDvGpB9AILDcJnua6NW3RKqJZVR2WF0IKq14sZ+CaqYjiQFj0y0aUgyQfPwS2BmwIHbOsAmtNDg3FyIgKa1d4um30+0u45wK/SLvjHhTfOjs7FS1bR+2p0F2ixddJG6uk/BGMNAqbGD3+3cv9MK6eOhVuHRm19g7QFnNPjHT6eYBdRpoNiHjz1VfoAyuvwQYfV1AOceg1Q9/dFsctpD/1vx9QrrL5zekzxyHkzYJGqneMc4jr53UT3aXfzqtHPaLAUNDsrWz3q8/3Sxjl0yQT8/3FaX+N1+dGXxJkaIHFnMmA9AyHDNYshbUg3J1lRc3ah+RenPe4NOkk8VOFcxNB9U/jVsgZ3LT+gM0Lk4DAFJLP2+190oduCXS1wO65wJ8aiKd5d+wWyuOm5ikqDiwyMYic9L9jLoXZ5DHcRAFSPM
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7f916a-b2a5-45fd-399b-08deac57aff9
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB11481.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 16:42:54.9453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR09MB6407
X-Authority-Analysis: v=2.4 cv=K7cv3iWI c=1 sm=1 tr=0 ts=69fcc112 cx=c_pps
 a=8wl2pSCwUTG4UZDNSNd9fQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=Ul2ihcTNv6sA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=zvN32FZK4hqnROEWhWPN:22 a=wlpGG4-9GgZF_kJ3c3mt:22
 a=HL3alpDKAAAA:8 a=VwQbUJbxAAAA:8 a=xupNtHhh42IIA2b9r28A:9 a=QEXdDO2ut3YA:10
 a=KRX0AkppOCwXZa-dNZoJ:22
X-Proofpoint-GUID: cyYew0mHh5L_1U1E77WygqipeckD1btv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDE2OCBTYWx0ZWRfXwpBsPqq9q4Up
 jU8nbLTQwzTqbtwb8Xd5TX7pWh0vNFhHPwl0P2D4DGFzLIK+WqLe2mS+8aMoWiEz8wJnlkM4Kvj
 lp5THk8ZhsbDMnr85/xWojZYQkKZgmwiX9CT+6DXAMBTkY2S18YbI5ITpK7SyXiBSmmspm41OxJ
 K50SZ1th/ld+UB+wujxjlwUTBOWLyjmlyQ+MHM94E3K2V8DuL7F396GFVY/XdWPGQ7WDhk/sDB0
 Oqs1wDx+U4xu9QenZHuldvKiFo6sWZr6Kc082dR1uF9WukshnLDdS1Brhzc4kQvlqwcEwzgcFB+
 jQ/GwttFFsUv1YyXIYHb4eyi6qdh/fvfBdj9J6qPMhYTcwphxmyzhhiYppnriygaB+iI4jmgRHz
 rZX95I2Fi2NxJTq2iUPm53easDEBzGO+op10wsFGMe0Mvi6dpgYmAdZLSI454VMEmeTEHguGXhr
 ezbgitiQF848KQOthHQ==
X-Proofpoint-ORIG-GUID: cyYew0mHh5L_1U1E77WygqipeckD1btv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2605070168
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > Have you tested removing and adding the IPMI interface
 while
 this is up? > You can do that with the hotmod interface on IPMI. Thanks for
 the tip Corey. I just tried reloading the device via hotmod, and the craye1k
 driver worked as expected. Here's the hotmod removal + add dmesg lines: 
 Content analysis details:   (-1.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.0 FROM_GOV_DKIM_AU       From Government address and DKIM signed
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wL1p4-0005rr-8P
Subject: Re: [Openipmi-developer] [PATCH v8 RESEND] Introduce Cray
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
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 7F1564EC605
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:minyard@acm.org,m:alok.a.tiwari@oracle.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mariusz.tkaczyk@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,llnl.gov:s=02022021-podllnl,doellnl.onmicrosoft.com:s=selector1-doellnl-onmicrosoft-com];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,llnl.gov:-,doellnl.onmicrosoft.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[hutter2@llnl.gov];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

> Have you tested removing and adding the IPMI interface while this is up?
> You can do that with the hotmod interface on IPMI.

Thanks for the tip Corey.  I just tried reloading the device via hotmod, and the craye1k driver worked as expected.  Here's the hotmod removal + add dmesg lines:

  craye1k: Got unexpected smi_gone, iface=0
  ipmi_si hotmod-ipmi-si.3: ipmi_platform: probing via hotmod
  ipmi_platform: ipmi_si: hotmod: io 0xca2 regsize 1 spacing 1 irq 0
  ipmi_si: Adding hotmod-specified kcs state machine
  ipmi_si: Trying hotmod-specified kcs state machine at i/o address 0xca2, slave address 0x20, irq 0
  ipmi_si hotmod-ipmi-si.3: IPMI message handler: Found new BMC (man_id: 0x002415, prod_id: 0x0101, dev_id: 0x20)
  ipmi_si hotmod-ipmi-si.3: Cray ClusterStor E1000 slot LEDs registered
  ipmi_si hotmod-ipmi-si.3: IPMI kcs interface initialized

-Tony

On 4/29/26 19:20, Corey Minyard wrote:
> On Wed, Apr 29, 2026 at 04:22:55PM -0700, Tony Hutter wrote:
>> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
>> The driver provides hotplug attention status callbacks for the 24 NVMe
>> slots on the E1000.  This allows users to access the E1000's locate and
>> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
>> entries.  This driver uses IPMI to communicate with the E1000 controller
>> to toggle the LEDs.
>>
>> Signed-off-by: Tony Hutter <hutter2@llnl.gov>
> 
> For the IPMI portions:
> Reviewed-by: Corey Minyard <corey@minyard.net>
> 
> Have you tested removing and adding the IPMI interface while this is up?
> You can do that with the hotmod interface on IPMI.  I didn't see any
> issues, but it's always good to test.
> 
> -corey
> 
>> ---
>> Changes in v8:
>>  - Remove unused variable in craye1k_get_attention_status().
>>
>> Changes in v7:
>>  - Update sysfs-bus-pci text from feedback.
>>  - Add DMI dependency to Kconfig.
>>  - Refactor pciehp_core.c to remove CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
>>    code blocks.
>>  - Move errno.h #include into correct alphabetical order.
>>  - Add comment describing the reasoning for the debugfs counters.
>>  - Move craye1k_init() call from pcie_hp_init() to init_slot().
>>  - Make craye1k mutex global rather than in craye1k->lock.  This enables
>>    handling of craye1k_[get|set]_attention_status() calls before the craye1k
>>    driver is initialized.
>>  - Do driver cleanup on craye1k_smi_gone().
>>
>> Changes in v6:
>>  - Change some dev_info_ratelimited() calls to dev_info().
>>  - Don't call craye1k_init() if pcie_port_service_register() fails.
>>  - Fix stray indent in #define CRAYE1K_POST_CMD_WAIT_MS
>>
>> Changes in v5:
>>  - Removed unnecessary ipmi_smi.h #include.
>>  - Added WARN_ON() to craye1k_do_message() to sanity check that craye1k->lock
>>    is held.
>>  - Added additional comments for when craye1k->lock should be held.
>>
>> Changes in v4:
>>  - Fix typo in Kconfig: "is it" ->  "it is"
>>  - Rename some #defines to CRAYE1K_SUBCMD_*
>>  - Use IS_ERR() check in craye1k_debugfs_init()
>>  - Return -EIO instead of -EINVAL when LED value check fails
>>
>> Changes in v3:
>>  - Add 'attention' values in Documentation/ABI/testing/sysfs-bus-pci.
>>  - Remove ACPI_PCI_SLOT dependency.
>>  - Cleanup craye1k_do_message() error checking.
>>  - Skip unneeded memcpy() on failure in __craye1k_do_command().
>>  - Merge craye1k_do_command_and_netfn() code into craye1k_do_command().
>>  - Make craye1k_is_primary() return boolean.
>>  - Return negative error code on failure in craye1k_set_primary().
>>
>> Changes in v2:
>>  - Integrated E1000 code into the pciehp driver as an built-in
>>    extention rather than as a standalone module.
>>  - Moved debug tunables and counters to debugfs.
>>  - Removed forward declarations.
>>  - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
>>    than using NPEM/_DSM or led_classdev as suggested.  The "attention"
>>    interface is more beneficial for our site, since it allows us to
>>    control the NVMe slot LEDs agnostically across different enclosure
>>    vendors and kernel versions using the same scripts.  It is also
>>    nice to use the same /sys/bus/pci/slots/<slot>/ sysfs directory for
>>    both slot LED toggling ("attention") and slot power control
>>    ("power").
>> ---
>>  Documentation/ABI/testing/sysfs-bus-pci |  21 +
>>  MAINTAINERS                             |   5 +
>>  drivers/pci/hotplug/Kconfig             |  10 +
>>  drivers/pci/hotplug/Makefile            |   3 +
>>  drivers/pci/hotplug/pciehp.h            |  20 +
>>  drivers/pci/hotplug/pciehp_core.c       |  20 +-
>>  drivers/pci/hotplug/pciehp_craye1k.c    | 687 ++++++++++++++++++++++++
>>  7 files changed, 765 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
>> index 92debe879ffb..8536d2ff30d1 100644
>> --- a/Documentation/ABI/testing/sysfs-bus-pci
>> +++ b/Documentation/ABI/testing/sysfs-bus-pci
>> @@ -231,6 +231,27 @@ Description:
>>  		    - scXX contains the device subclass;
>>  		    - iXX contains the device class programming interface.
>>  
>> +What:		/sys/bus/pci/slots/.../attention
>> +Date:		February 2025
>> +Contact:	linux-pci@vger.kernel.org
>> +Description:
>> +		The attention attribute is used to read or write the attention
>> +		status for an enclosure slot.  This is often used to set the
>> +		slot LED value on a NVMe storage enclosure.
>> +
>> +		Common values:
>> +		0 = OFF
>> +		1 = ON
>> +		2 = blink
>> +
>> +		Using the Cray ClusterStor E1000 extensions:
>> +		0 = fault LED OFF, locate LED OFF
>> +		1 = fault LED ON,  locate LED OFF
>> +		2 = fault LED OFF, locate LED ON
>> +		3 = fault LED ON,  locate LED ON
>> +
>> +		Other values are no-op, OFF, or ON depending on the driver.
>> +
>>  What:		/sys/bus/pci/slots/.../module
>>  Date:		June 2009
>>  Contact:	linux-pci@vger.kernel.org
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 9ac254f4ec41..861576d60a36 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -6543,6 +6543,11 @@ S:	Maintained
>>  F:	Documentation/filesystems/cramfs.rst
>>  F:	fs/cramfs/
>>  
>> +CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS
>> +M:	Tony Hutter <hutter2@llnl.gov>
>> +S:	Maintained
>> +F:	drivers/pci/hotplug/pciehp_craye1k.c
>> +
>>  CRC LIBRARY
>>  M:	Eric Biggers <ebiggers@kernel.org>
>>  R:	Ard Biesheuvel <ardb@kernel.org>
>> diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kconfig
>> index 3207860b52e4..3cb84e5e13e9 100644
>> --- a/drivers/pci/hotplug/Kconfig
>> +++ b/drivers/pci/hotplug/Kconfig
>> @@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390
>>  
>>  	  When in doubt, say Y.
>>  
>> +config HOTPLUG_PCI_PCIE_CRAY_E1000
>> +	bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
>> +	depends on DMI && HOTPLUG_PCI_PCIE && IPMI_HANDLER=y
>> +	help
>> +	  Say Y here if you have a Cray ClusterStor E1000 and want to control
>> +	  your NVMe slot LEDs.  Without this driver it is not possible
>> +	  to control the fault and locate LEDs on the E1000's 24 NVMe slots.
>> +
>> +	  When in doubt, say N.
>> +
>>  endif # HOTPLUG_PCI
>> diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Makefile
>> index 40aaf31fe338..82a1f0592d0a 100644
>> --- a/drivers/pci/hotplug/Makefile
>> +++ b/drivers/pci/hotplug/Makefile
>> @@ -66,6 +66,9 @@ pciehp-objs		:=	pciehp_core.o	\
>>  				pciehp_ctrl.o	\
>>  				pciehp_pci.o	\
>>  				pciehp_hpc.o
>> +ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
>> +pciehp-objs		+=	pciehp_craye1k.o
>> +endif
>>  
>>  shpchp-objs		:=	shpchp_core.o	\
>>  				shpchp_ctrl.o	\
>> diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp.h
>> index debc79b0adfb..3a8173f3e159 100644
>> --- a/drivers/pci/hotplug/pciehp.h
>> +++ b/drivers/pci/hotplug/pciehp.h
>> @@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct hotplug_slot *h_slot, u8 *status);
>>  
>>  int pciehp_slot_reset(struct pcie_device *dev);
>>  
>> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
>> +int craye1k_init(void);
>> +bool is_craye1k_board(void);
>> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot, u8 *status);
>> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot, u8 status);
>> +#else
>> +#define craye1k_init() (0)
>> +#define craye1k_get_attention_status NULL
>> +#define craye1k_set_attention_status NULL
>> +#endif
>> +
>>  static inline const char *slot_name(struct controller *ctrl)
>>  {
>>  	return hotplug_slot_name(&ctrl->hotplug_slot);
>> @@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(struct hotplug_slot *hotplug_slot)
>>  	return container_of(hotplug_slot, struct controller, hotplug_slot);
>>  }
>>  
>> +static inline bool is_craye1k_slot(struct controller *ctrl)
>> +{
>> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
>> +	return (PSN(ctrl) >= 1 && PSN(ctrl) <= 24 && is_craye1k_board());
>> +#else
>> +	return false;
>> +#endif
>> +}
>> +
>>  #endif				/* _PCIEHP_H */
>> diff --git a/drivers/pci/hotplug/pciehp_core.c b/drivers/pci/hotplug/pciehp_core.c
>> index f59baa912970..3e8e2b3069bf 100644
>> --- a/drivers/pci/hotplug/pciehp_core.c
>> +++ b/drivers/pci/hotplug/pciehp_core.c
>> @@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)
>>  	} else if (ctrl->pcie->port->hotplug_user_indicators) {
>>  		ops->get_attention_status = pciehp_get_raw_indicator_status;
>>  		ops->set_attention_status = pciehp_set_raw_indicator_status;
>> +	} else if (is_craye1k_slot(ctrl)) {
>> +		/*
>> +		 * The Cray E1000 driver controls slots 1-24.  Initialize the
>> +		 * Cray E1000 driver when slot 1 is seen.
>> +		 */
>> +		if (PSN(ctrl) == 1) {
>> +			retval = craye1k_init();
>> +			if (retval) {
>> +				ctrl_err(ctrl,
>> +					 "Error loading Cray E1000 extensions");
>> +				kfree(ops);
>> +				return retval;
>> +			}
>> +		}
>> +		ops->get_attention_status = craye1k_get_attention_status;
>> +		ops->set_attention_status = craye1k_set_attention_status;
>>  	}
>>  
>>  	/* register this slot with the hotplug pci core */
>> @@ -376,8 +392,10 @@ int __init pcie_hp_init(void)
>>  
>>  	retval = pcie_port_service_register(&hpdriver_portdrv);
>>  	pr_debug("pcie_port_service_register = %d\n", retval);
>> -	if (retval)
>> +	if (retval) {
>>  		pr_debug("Failure to register service\n");
>> +		return retval;
>> +	}
>>  
>>  	return retval;
>>  }
>> diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/hotplug/pciehp_craye1k.c
>> new file mode 100644
>> index 000000000000..9c5bee81fdf8
>> --- /dev/null
>> +++ b/drivers/pci/hotplug/pciehp_craye1k.c
>> @@ -0,0 +1,687 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright 2022-2024 Lawrence Livermore National Security, LLC
>> + */
>> +/*
>> + * Cray ClusterStor E1000 hotplug slot LED driver extensions
>> + *
>> + * This driver controls the NVMe slot LEDs on the Cray ClusterStore E1000.
>> + * It provides hotplug attention status callbacks for the 24 NVMe slots on
>> + * the E1000.  This allows users to access the E1000's locate and fault
>> + * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs entries.
>> + * This driver uses IPMI to communicate with the E1000 controller to toggle
>> + * the LEDs.
>> + *
>> + * This driver is based off of ibmpex.c
>> + */
>> +
>> +#include <linux/debugfs.h>
>> +#include <linux/delay.h>
>> +#include <linux/dmi.h>
>> +#include <linux/errno.h>
>> +#include <linux/ipmi.h>
>> +#include <linux/module.h>
>> +#include <linux/pci.h>
>> +#include <linux/pci_hotplug.h>
>> +#include <linux/random.h>
>> +#include "pciehp.h"
>> +
>> +/* Cray E1000 commands */
>> +#define CRAYE1K_CMD_NETFN       0x3c
>> +#define CRAYE1K_CMD_PRIMARY     0x33
>> +#define CRAYE1K_CMD_FAULT_LED   0x39
>> +#define CRAYE1K_CMD_LOCATE_LED  0x22
>> +
>> +/* Subcommands */
>> +#define CRAYE1K_SUBCMD_GET_LED		0x0
>> +#define CRAYE1K_SUBCMD_SET_LED		0x1
>> +#define CRAYE1K_SUBCMD_SET_PRIMARY	0x1
>> +
>> +/*
>> + * Milliseconds to wait after get/set LED command.  200ms value found though
>> + * experimentation
>> + */
>> +#define CRAYE1K_POST_CMD_WAIT_MS	200
>> +
>> +struct craye1k {
>> +	struct device *dev;   /* BMC device */
>> +	struct mutex lock;
>> +	struct completion read_complete;
>> +	struct ipmi_addr address;
>> +	struct ipmi_user *user;
>> +	int iface;
>> +
>> +	long tx_msg_id;
>> +	struct kernel_ipmi_msg tx_msg;
>> +	unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];
>> +	unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];
>> +	unsigned long rx_msg_len;
>> +	unsigned char rx_result;	/* IPMI completion code */
>> +
>> +	/* Parent dir for all our debugfs entries */
>> +	struct dentry *parent;
>> +
>> +	/* debugfs stats */
>> +	u64 check_primary;
>> +	u64 check_primary_failed;
>> +	u64 was_already_primary;
>> +	u64 was_not_already_primary;
>> +	u64 set_primary;
>> +	u64 set_initial_primary_failed;
>> +	u64 set_primary_failed;
>> +	u64 set_led_locate_failed;
>> +	u64 set_led_fault_failed;
>> +	u64 set_led_readback_failed;
>> +	u64 set_led_failed;
>> +	u64 get_led_failed;
>> +	u64 completion_timeout;
>> +	u64 wrong_msgid;
>> +	u64 request_failed;
>> +
>> +	/* debugfs configuration options */
>> +
>> +	/* Print info on spurious IPMI messages */
>> +	bool print_errors;
>> +
>> +	/* Retries for kernel IPMI layer */
>> +	u32 ipmi_retries;
>> +
>> +	/* Timeout in ms for IPMI (0 = use IPMI default_retry_ms) */
>> +	u32 ipmi_timeout_ms;
>> +
>> +	/* Timeout in ms to wait for E1000 message completion */
>> +	u32 completion_timeout_ms;
>> +};
>> +
>> +/*
>> + * Make our craye1k a global so get/set_attention_status() can access it.
>> + * This is safe since there's only one node controller on the board, and so it's
>> + * impossible to instantiate more than one craye1k.
>> + */
>> +static struct craye1k *craye1k_global;
>> +static DEFINE_MUTEX(craye1k_lock);
>> +
>> +/*
>> + * The E1000 command timeout and retry values were found though experimentation
>> + * by looking at the error counters.  Keep the counters around to troubleshoot
>> + * any issues with our current timeout/retry values.
>> + */
>> +static struct dentry *
>> +craye1k_debugfs_init(struct craye1k *craye1k)
>> +{
>> +	umode_t mode = 0644;
>> +	struct dentry *parent = debugfs_create_dir("pciehp_craye1k", NULL);
>> +
>> +	if (IS_ERR(parent))
>> +		return NULL;
>> +
>> +	debugfs_create_x64("check_primary", mode, parent,
>> +			   &craye1k->check_primary);
>> +	debugfs_create_x64("check_primary_failed", mode, parent,
>> +			   &craye1k->check_primary_failed);
>> +	debugfs_create_x64("was_already_primary", mode, parent,
>> +			   &craye1k->was_already_primary);
>> +	debugfs_create_x64("was_not_already_primary", mode, parent,
>> +			   &craye1k->was_not_already_primary);
>> +	debugfs_create_x64("set_primary", mode, parent,
>> +			   &craye1k->set_primary);
>> +	debugfs_create_x64("set_initial_primary_failed", mode, parent,
>> +			   &craye1k->set_initial_primary_failed);
>> +	debugfs_create_x64("set_primary_failed", mode, parent,
>> +			   &craye1k->set_primary_failed);
>> +	debugfs_create_x64("set_led_locate_failed", mode, parent,
>> +			   &craye1k->set_led_locate_failed);
>> +	debugfs_create_x64("set_led_fault_failed", mode, parent,
>> +			   &craye1k->set_led_fault_failed);
>> +	debugfs_create_x64("set_led_readback_failed", mode, parent,
>> +			   &craye1k->set_led_readback_failed);
>> +	debugfs_create_x64("set_led_failed", mode, parent,
>> +			   &craye1k->set_led_failed);
>> +	debugfs_create_x64("get_led_failed", mode, parent,
>> +			   &craye1k->get_led_failed);
>> +	debugfs_create_x64("completion_timeout", mode, parent,
>> +			   &craye1k->completion_timeout);
>> +	debugfs_create_x64("wrong_msgid", mode, parent,
>> +			   &craye1k->wrong_msgid);
>> +	debugfs_create_x64("request_failed", mode, parent,
>> +			   &craye1k->request_failed);
>> +
>> +	debugfs_create_x32("ipmi_retries", mode, parent,
>> +			   &craye1k->ipmi_retries);
>> +	debugfs_create_x32("ipmi_timeout_ms", mode, parent,
>> +			   &craye1k->ipmi_timeout_ms);
>> +	debugfs_create_x32("completion_timeout_ms", mode, parent,
>> +			   &craye1k->completion_timeout_ms);
>> +	debugfs_create_bool("print_errors", mode, parent,
>> +			    &craye1k->print_errors);
>> +
>> +	/* Return parent dir dentry */
>> +	return parent;
>> +}
>> +
>> +/*
>> + * craye1k_msg_handler() - IPMI message response handler
>> + */
>> +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
>> +{
>> +	struct craye1k *craye1k = user_msg_data;
>> +
>> +	if (msg->msgid != craye1k->tx_msg_id) {
>> +		craye1k->wrong_msgid++;
>> +		if (craye1k->print_errors) {
>> +			dev_warn_ratelimited(craye1k->dev,
>> +					     "rx msgid %ld != %ld",
>> +					     msg->msgid, craye1k->tx_msg_id);
>> +		}
>> +		ipmi_free_recv_msg(msg);
>> +		return;
>> +	}
>> +
>> +	/* Set rx_result to the IPMI completion code */
>> +	if (msg->msg.data_len > 0)
>> +		craye1k->rx_result = msg->msg.data[0];
>> +	else
>> +		craye1k->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;
>> +
>> +	if (msg->msg.data_len > 1) {
>> +		/* Exclude completion code from data bytes */
>> +		craye1k->rx_msg_len = msg->msg.data_len - 1;
>> +		memcpy(craye1k->rx_msg_data, msg->msg.data + 1,
>> +		       craye1k->rx_msg_len);
>> +	} else {
>> +		craye1k->rx_msg_len = 0;
>> +	}
>> +
>> +	ipmi_free_recv_msg(msg);
>> +
>> +	complete(&craye1k->read_complete);
>> +}
>> +
>> +static const struct ipmi_user_hndl craye1k_user_hndl = {
>> +	.ipmi_recv_hndl = craye1k_msg_handler
>> +};
>> +
>> +static void craye1k_new_smi(int iface, struct device *dev)
>> +{
>> +	int rc;
>> +	struct craye1k *craye1k;
>> +
>> +	craye1k = kzalloc(sizeof(*craye1k), GFP_KERNEL);
>> +	if (!craye1k)
>> +		return;
>> +
>> +	craye1k->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
>> +	craye1k->address.channel = IPMI_BMC_CHANNEL;
>> +	craye1k->iface = iface;
>> +	craye1k->dev = dev;
>> +	craye1k->tx_msg.data = craye1k->tx_msg_data;
>> +	craye1k->ipmi_retries = 4;
>> +	craye1k->ipmi_timeout_ms = 500;
>> +	craye1k->completion_timeout_ms = 300;
>> +
>> +	init_completion(&craye1k->read_complete);
>> +
>> +	dev_set_drvdata(dev, craye1k);
>> +
>> +	rc = ipmi_create_user(craye1k->iface, &craye1k_user_hndl, craye1k,
>> +			      &craye1k->user);
>> +	if (rc < 0) {
>> +		dev_err(dev, "Unable to register IPMI user, iface %d\n",
>> +			craye1k->iface);
>> +		kfree(craye1k);
>> +		dev_set_drvdata(dev, NULL);
>> +		return;
>> +	}
>> +
>> +	mutex_lock(&craye1k_lock);
>> +
>> +	/* There's only one node controller so driver data should not be set */
>> +	WARN_ON(craye1k_global);
>> +
>> +	craye1k_global = craye1k;
>> +	craye1k->parent = craye1k_debugfs_init(craye1k);
>> +	mutex_unlock(&craye1k_lock);
>> +	if (!craye1k->parent)
>> +		dev_warn(dev, "Cannot create debugfs");
>> +
>> +	dev_info(dev, "Cray ClusterStor E1000 slot LEDs registered");
>> +}
>> +
>> +static void craye1k_smi_gone(int iface)
>> +{
>> +	pr_warn("craye1k: Got unexpected smi_gone, iface=%d", iface);
>> +
>> +	mutex_lock(&craye1k_lock);
>> +	if (craye1k_global) {
>> +		debugfs_remove_recursive(craye1k_global->parent);
>> +		kfree(craye1k_global);
>> +		craye1k_global = NULL;
>> +	}
>> +	mutex_unlock(&craye1k_lock);
>> +}
>> +
>> +static struct ipmi_smi_watcher craye1k_smi_watcher = {
>> +	.owner = THIS_MODULE,
>> +	.new_smi = craye1k_new_smi,
>> +	.smi_gone = craye1k_smi_gone
>> +};
>> +
>> +/*
>> + * craye1k_send_message() - Send the message already setup in 'craye1k'
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Return: 0 on success, non-zero on error.
>> + */
>> +static int craye1k_send_message(struct craye1k *craye1k)
>> +{
>> +	int rc;
>> +
>> +	rc = ipmi_validate_addr(&craye1k->address, sizeof(craye1k->address));
>> +	if (rc) {
>> +		dev_err_ratelimited(craye1k->dev, "ipmi_validate_addr() = %d\n",
>> +				    rc);
>> +		return rc;
>> +	}
>> +
>> +	craye1k->tx_msg_id++;
>> +
>> +	rc = ipmi_request_settime(craye1k->user, &craye1k->address,
>> +				  craye1k->tx_msg_id, &craye1k->tx_msg, craye1k,
>> +				  0, craye1k->ipmi_retries,
>> +				  craye1k->ipmi_timeout_ms);
>> +
>> +	if (rc) {
>> +		craye1k->request_failed++;
>> +		return rc;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Return: 0 on success, non-zero on error.
>> + */
>> +static int craye1k_do_message(struct craye1k *craye1k)
>> +{
>> +	int rc;
>> +	struct completion *read_complete = &craye1k->read_complete;
>> +	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);
>> +
>> +	WARN_ON(!mutex_is_locked(&craye1k_lock));
>> +
>> +	rc = craye1k_send_message(craye1k);
>> +	if (rc)
>> +		return rc;
>> +
>> +	rc = wait_for_completion_killable_timeout(read_complete, tout);
>> +	if (rc == 0) {
>> +		/* timed out */
>> +		craye1k->completion_timeout++;
>> +		return -ETIME;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * __craye1k_do_command() - Do an IPMI command
>> + *
>> + * Send a command with optional data bytes, and read back response bytes.
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: 0 on success, non-zero on error.
>> + */
>> +static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8 cmd,
>> +				u8 *send_data, u8 send_data_len, u8 *recv_data,
>> +				u8 recv_data_len)
>> +{
>> +	int rc;
>> +
>> +	craye1k->tx_msg.netfn = netfn;
>> +	craye1k->tx_msg.cmd = cmd;
>> +
>> +	if (send_data) {
>> +		memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len);
>> +		craye1k->tx_msg.data_len = send_data_len;
>> +	} else {
>> +		craye1k->tx_msg_data[0] = 0;
>> +		craye1k->tx_msg.data_len = 0;
>> +	}
>> +
>> +	rc = craye1k_do_message(craye1k);
>> +	if (rc == 0)
>> +		memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
>> +
>> +	return rc;
>> +}
>> +
>> +/*
>> + * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
>> + * @cmd: Cray E1000 specific command
>> + * @send_data:  Data to send after the command
>> + * @send_data_len: Data length
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: the last byte from the response or 0 if response had no response
>> + * data bytes, else -1 on error.
>> + */
>> +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
>> +			      u8 send_data_len)
>> +{
>> +	int rc;
>> +
>> +	rc = __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd, send_data,
>> +				  send_data_len, NULL, 0);
>> +	if (rc != 0) {
>> +		/* Error attempting command */
>> +		return -1;
>> +	}
>> +
>> +	if (craye1k->tx_msg.data_len == 0)
>> +		return 0;
>> +
>> +	/* Return last received byte value */
>> +	return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
>> +}
>> +
>> +/*
>> + * __craye1k_set_primary() - Tell the BMC we want to be the primary server
>> + *
>> + * An E1000 board has two physical servers on it.  In order to set a slot
>> + * NVMe LED, this server needs to first tell the BMC that it's the primary
>> + * server.
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: 0 on success, non-zero on error.
>> + */
>> +static int __craye1k_set_primary(struct craye1k *craye1k)
>> +{
>> +	u8 bytes[2] = {CRAYE1K_SUBCMD_SET_PRIMARY, 1};	/* set primary to 1 */
>> +
>> +	craye1k->set_primary++;
>> +	return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2);
>> +}
>> +
>> +/*
>> + * craye1k_is_primary() - Are we the primary server?
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: true if we are the primary server, false otherwise.
>> + */
>> +static bool craye1k_is_primary(struct craye1k *craye1k)
>> +{
>> +	u8 byte = 0;
>> +	int rc;
>> +
>> +	/* Response byte is 0x1 on success */
>> +	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
>> +	craye1k->check_primary++;
>> +	if (rc == 0x1)
>> +		return true;   /* success */
>> +
>> +	craye1k->check_primary_failed++;
>> +	return false;   /* We are not the primary server node */
>> +}
>> +
>> +/*
>> + * craye1k_set_primary() - Attempt to set ourselves as the primary server
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: 0 on success, -1 otherwise.
>> + */
>> +static int craye1k_set_primary(struct craye1k *craye1k)
>> +{
>> +	int tries = 10;
>> +
>> +	if (craye1k_is_primary(craye1k)) {
>> +		craye1k->was_already_primary++;
>> +		return 0;
>> +	}
>> +	craye1k->was_not_already_primary++;
>> +
>> +	/* delay found through experimentation */
>> +	msleep(300);
>> +
>> +	if (__craye1k_set_primary(craye1k) != 0) {
>> +		craye1k->set_initial_primary_failed++;
>> +		return -1;	/* error */
>> +	}
>> +
>> +	/*
>> +	 * It can take 2 to 3 seconds after setting primary for the controller
>> +	 * to report that it is the primary.
>> +	 */
>> +	while (tries--) {
>> +		msleep(500);
>> +		if (craye1k_is_primary(craye1k))
>> +			break;
>> +	}
>> +
>> +	if (tries == 0) {
>> +		craye1k->set_primary_failed++;
>> +		return -1;	/* never reported that it's primary */
>> +	}
>> +
>> +	/* Wait for primary switch to finish */
>> +	msleep(1500);
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * craye1k_get_slot_led() - Get slot LED value
>> + * @slot: Slot number (1-24)
>> + * @is_locate_led: 0 = get fault LED value, 1 = get locate LED value
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: slot value on success, -1 on failure.
>> + */
>> +static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned char slot,
>> +				bool is_locate_led)
>> +{
>> +	u8 bytes[2];
>> +	u8 cmd;
>> +
>> +	bytes[0] = CRAYE1K_SUBCMD_GET_LED;
>> +	bytes[1] = slot;
>> +
>> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
>> +
>> +	return craye1k_do_command(craye1k, cmd, bytes, 2);
>> +}
>> +
>> +/*
>> + * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a value
>> + * @slot: Slot number (1-24)
>> + * @is_locate_led: 0 = use fault LED, 1 = use locate LED
>> + * @value: Value to set (0 or 1)
>> + *
>> + * Check the LED value after calling this function to ensure it has been set
>> + * properly.
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: 0 on success, non-zero on failure.
>> + */
>> +static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned char slot,
>> +				unsigned char is_locate_led,
>> +				unsigned char value)
>> +{
>> +	u8 bytes[3];
>> +	u8 cmd;
>> +
>> +	bytes[0] = CRAYE1K_SUBCMD_SET_LED;
>> +	bytes[1] = slot;
>> +	bytes[2] = value;
>> +
>> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
>> +
>> +	return craye1k_do_command(craye1k, cmd, bytes, 3);
>> +}
>> +
>> +/*
>> + * __craye1k_get_attention_status() - Get LED value
>> + *
>> + * Context: craye1k_lock is already held.
>> + * Returns: 0 on success, -EIO on failure.
>> + */
>> +static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
>> +					  u8 *status, bool set_primary)
>> +{
>> +	unsigned char slot;
>> +	int locate, fault;
>> +	struct craye1k *craye1k;
>> +
>> +	craye1k = craye1k_global;
>> +	slot = PSN(to_ctrl(hotplug_slot));
>> +
>> +	if (set_primary) {
>> +		if (craye1k_set_primary(craye1k) != 0) {
>> +			craye1k->get_led_failed++;
>> +			return -EIO;
>> +		}
>> +	}
>> +
>> +	locate = craye1k_get_slot_led(craye1k, slot, true);
>> +	if (locate == -1) {
>> +		craye1k->get_led_failed++;
>> +		return -EIO;
>> +	}
>> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
>> +
>> +	fault = craye1k_get_slot_led(craye1k, slot, false);
>> +	if (fault == -1) {
>> +		craye1k->get_led_failed++;
>> +		return -EIO;
>> +	}
>> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
>> +
>> +	*status = locate << 1 | fault;
>> +
>> +	return 0;
>> +}
>> +
>> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
>> +				 u8 *status)
>> +{
>> +	int rc;
>> +
>> +	if (mutex_lock_interruptible(&craye1k_lock) != 0)
>> +		return -EINTR;
>> +
>> +	if (!craye1k_global) {
>> +		/* Driver isn't initialized yet */
>> +		mutex_unlock(&craye1k_lock);
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
>> +
>> +	mutex_unlock(&craye1k_lock);
>> +	return rc;
>> +}
>> +
>> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
>> +				 u8 status)
>> +{
>> +	unsigned char slot;
>> +	int tries = 4;
>> +	int rc;
>> +	u8 new_status;
>> +	struct craye1k *craye1k;
>> +	bool locate, fault;
>> +
>> +	if (mutex_lock_interruptible(&craye1k_lock) != 0)
>> +		return -EINTR;
>> +
>> +	if (!craye1k_global) {
>> +		/* Driver isn't initialized yet */
>> +		mutex_unlock(&craye1k_lock);
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	craye1k = craye1k_global;
>> +
>> +	slot = PSN(to_ctrl(hotplug_slot));
>> +
>> +	/* Retry to ensure all LEDs are set */
>> +	while (tries--) {
>> +		/*
>> +		 * The node must first set itself to be the primary node before
>> +		 * setting the slot LEDs (each board has two nodes, or
>> +		 * "servers" as they're called by the manufacturer).  This can
>> +		 * lead to contention if both nodes are trying to set the LEDs
>> +		 * at the same time.
>> +		 */
>> +		rc = craye1k_set_primary(craye1k);
>> +		if (rc != 0) {
>> +			/* Could not set as primary node.  Just retry again. */
>> +			continue;
>> +		}
>> +
>> +		/* Write value twice to increase success rate */
>> +		locate = (status & 0x2) >> 1;
>> +		craye1k_set_slot_led(craye1k, slot, 1, locate);
>> +		if (craye1k_set_slot_led(craye1k, slot, 1, locate) != 0) {
>> +			craye1k->set_led_locate_failed++;
>> +			continue;	/* fail, retry */
>> +		}
>> +
>> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
>> +
>> +		fault = status & 0x1;
>> +		craye1k_set_slot_led(craye1k, slot, 0, fault);
>> +		if (craye1k_set_slot_led(craye1k, slot, 0, fault) != 0) {
>> +			craye1k->set_led_fault_failed++;
>> +			continue;	/* fail, retry */
>> +		}
>> +
>> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
>> +
>> +		rc = __craye1k_get_attention_status(hotplug_slot, &new_status,
>> +						    false);
>> +
>> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
>> +
>> +		if (rc == 0 && new_status == status)
>> +			break;	/* success */
>> +
>> +		craye1k->set_led_readback_failed++;
>> +
>> +		/*
>> +		 * At this point we weren't successful in setting the LED and
>> +		 * need to try again.
>> +		 *
>> +		 * Do a random back-off to reduce contention with other server
>> +		 * node in the unlikely case that both server nodes are trying to
>> +		 * trying to set a LED at the same time.
>> +		 *
>> +		 * The 500ms minimum in the back-off reduced the chance of this
>> +		 * whole retry loop failing from 1 in 700 to none in 10000.
>> +		 */
>> +		msleep(500 + (get_random_long() % 500));
>> +	}
>> +	mutex_unlock(&craye1k_lock);
>> +	if (tries == 0) {
>> +		craye1k->set_led_failed++;
>> +		return -EIO;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +bool is_craye1k_board(void)
>> +{
>> +	return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
>> +}
>> +
>> +int craye1k_init(void)
>> +{
>> +	return ipmi_smi_watcher_register(&craye1k_smi_watcher);
>> +}
>> +
>> +MODULE_LICENSE("GPL");
>> +MODULE_AUTHOR("Tony Hutter <hutter2@llnl.gov>");
>> +MODULE_DESCRIPTION("Cray E1000 NVMe Slot LED driver");
>> -- 
>> 2.43.7
>>
>>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
