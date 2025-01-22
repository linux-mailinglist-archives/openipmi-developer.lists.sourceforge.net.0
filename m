Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F1CA1A446
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLd-0001Nh-KI;
	Thu, 23 Jan 2025 12:30:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadKJ-000132-2f
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PztkFg57upQfl9uFVIH43wRTzPCQzZPmgJS1hWIsUPw=; b=R+31ccdAtuybqsdGiWXs5Bcc8e
 ep2xuYw7oQJlmZ14WD3Qlq6v+a8kSlds14HzgheUZXhhjjlBAxy8ZSiDXx/tZKDxmFENAqRQ1XJwD
 8OiUyFoPK1C95pyPWkxCogV869DzkAzHcw+KxWFP6Y0MHsX6+4G6q6Gm5x2YK6BwYXOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PztkFg57upQfl9uFVIH43wRTzPCQzZPmgJS1hWIsUPw=; b=iWcl6gdIGKUDJzOVp5P3TQ7vRz
 OcAu96/dOvrNDOGbT2ft8mKO0yOgfXbt6c7umgQXioS+KxE7158OEQw/vPCJCZmow08Gblgd+yM2O
 YXHCiqcW9XP2VoypppBUiRjpBufk4mER6SOBDTMgBsHziYJIREpg9RC8vBL1dmTuE5ns=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadKH-0004b9-Mr for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:11:34 +0000
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50M7XQCM013738;
 Wed, 22 Jan 2025 16:11:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=PztkFg
 57upQfl9uFVIH43wRTzPCQzZPmgJS1hWIsUPw=; b=Y5UbnKq09lf5xMnyzODXzE
 F1VGboZ3m+Y7XTJqgIt5Lef6SVz+4J4hYOZ1HJHoObXAUT8CVL4idNdr4L5HCE7P
 9yDTlPs+4v/UEFcU1T3v1XXzv1+MVcxN4KJ0rx/IKxl3IqM/GGbYvZYP9yb4coU+
 ZYdnyKel7B2V42WHsyOFMOglrXpAABUjxK+NWR0XLxcZ2Qf6Mbr+FMuTbNJ1PuEz
 88FTiZJCKdYrOr6ZePMe2CfJXJU2xwRLsUWF1FZXzbZgCV8PMhhztlsXfTYjSZFe
 BXm7nZIJ5dwXDlQ78EjI469vVF2Raq8CGuNWYk7AHvkSpUQ+fSH/ZJDaH9XD0G/A
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2bjv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:11:07 +0000 (GMT)
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MFqPue027924;
 Wed, 22 Jan 2025 16:11:06 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2bjr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:11:06 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MD2vpu024241;
 Wed, 22 Jan 2025 16:11:05 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 448q0y9awu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:11:05 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MGB5IV9634130
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:11:05 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 66C1158045;
 Wed, 22 Jan 2025 16:11:05 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 804CE58050;
 Wed, 22 Jan 2025 16:11:04 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:11:04 +0000 (GMT)
Message-ID: <804bffdf-a029-4bed-a6f1-42cf4c129f2a@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:11:02 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ninad Palsule <ninad@linux.ibm.com>, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-9-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-9-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: ZcgzZU75w_qF0eNW3_16-1LnugWQ9ohb
X-Proofpoint-GUID: Rx_zD-AK266kWu98eA7hPXtTKYAqCPtP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 phishscore=0 mlxscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > Removing voltage
 regulators max8952 from device tree. Those are fully > controlled by hardware
 and firmware should not touch them. Reviewed-by: Eddie James
 <eajames@linux.ibm.com>
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tadKH-0004b9-Mr
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 08/10] ARM: dts: aspeed:
 system1: Remove VRs max8952
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
From: Eddie James via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Eddie James <eajames@linux.ibm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On 1/16/25 14:35, Ninad Palsule wrote:
> Removing voltage regulators max8952 from device tree. Those are fully
> controlled by hardware and firmware should not touch them.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 34 -------------------
>   1 file changed, 34 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 1e0b1111ea9a..089a8315753a 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -486,23 +486,6 @@ eeprom@50 {
>   		compatible = "atmel,24c64";
>   		reg = <0x50>;
>   	};
> -
> -	regulator@60 {
> -		compatible = "maxim,max8952";
> -		reg = <0x60>;
> -
> -		max8952,default-mode = <0>;
> -		max8952,dvs-mode-microvolt = <1250000>, <1200000>,
> -						<1050000>, <950000>;
> -		max8952,sync-freq = <0>;
> -		max8952,ramp-speed = <0>;
> -
> -		regulator-name = "VR_v77_1v4";
> -		regulator-min-microvolt = <770000>;
> -		regulator-max-microvolt = <1400000>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -	};
>   };
>   
>   &i2c1 {
> @@ -1198,23 +1181,6 @@ eeprom@50 {
>   		compatible = "atmel,24c64";
>   		reg = <0x50>;
>   	};
> -
> -	regulator@60 {
> -		compatible = "maxim,max8952";
> -		reg = <0x60>;
> -
> -		max8952,default-mode = <0>;
> -		max8952,dvs-mode-microvolt = <1250000>, <1200000>,
> -						<1050000>, <950000>;
> -		max8952,sync-freq = <0>;
> -		max8952,ramp-speed = <0>;
> -
> -		regulator-name = "VR_v77_1v4";
> -		regulator-min-microvolt = <770000>;
> -		regulator-max-microvolt = <1400000>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -	};
>   };
>   
>   &i2c11 {


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
