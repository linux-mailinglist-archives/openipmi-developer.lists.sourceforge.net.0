Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E262A1A444
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLd-0001NT-AX;
	Thu, 23 Jan 2025 12:30:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadIs-0003BD-HG
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WDDwYVo0oK2H1oE/7TU1Y5wqdTMMwE7SymsR+ajnAVg=; b=CUDVVKmrX4wfgCoH0Tjm4psipf
 Gz/Z5/CdiluU4L3rQ7ZF8mNbHDOFSCMHggyDLe+dezQVAwCdz4zeKI0W/9eNmjPuxXtra5awjuSTC
 QjZ2l1poBcVpTe7DQQfT4arWgTMQ472WuVwlCkphX6u8UDgcCttBu+iYYj32JnAph91Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WDDwYVo0oK2H1oE/7TU1Y5wqdTMMwE7SymsR+ajnAVg=; b=J0ZI/1DujjFJTcOFhf3OJehuyc
 bYKt5bN1m1D96koojuDLM1Beud7bgXqhHz2+yNuvrEvnxJMU2nOlkX7h5vfenrCUfRpxXM8RBbxkz
 RC3skd2dypoMGc3pEkQk6CQ56onyGGdsXDcylofJA3US6EXcj4JVu23xI2cNMxmWduVU=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadIr-0004X4-Pz for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:10:06 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MFeuLY014610;
 Wed, 22 Jan 2025 16:09:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=WDDwYV
 o0oK2H1oE/7TU1Y5wqdTMMwE7SymsR+ajnAVg=; b=Dy+rNJJdobcKvZSl4vp36d
 iLzpako95A25bRk04GuElVB/AkmvGRkIT3eyWJE743t6oC7Kd6rf41e4GUNghbqO
 oaII0U7LyHmEcQrNkE07hBAIAuBBYnm+2dRkEo2ogdbT6T3TSCU8n7WqXfpjBbwC
 X652XyVz9s1gqPBdJiWDu2DgBpngEQiZcMEir2k+Fnh7mUVOdlofztg8tzwsjDxJ
 N9bcSGx1hNVjxYdibt7ULxWCulVqu2tUUW6p7xk+AkIvuL3XNH03IIv8fq97Xlif
 BGafs5OmTryk0/YBZQX96mgAf4UvlAYdsA3WQ2y+LPa+hnbJuZgOiKyGn8mcFaXA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44atg82wnd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:09:39 +0000 (GMT)
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MG5OR2021615;
 Wed, 22 Jan 2025 16:09:39 GMT
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44atg82wna-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:09:39 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MFR5QW021012;
 Wed, 22 Jan 2025 16:09:38 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 448sb1gtpv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:09:38 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG9bvo27984592
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:09:37 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5A4C558050;
 Wed, 22 Jan 2025 16:09:37 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6C8CF58045;
 Wed, 22 Jan 2025 16:09:36 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:09:36 +0000 (GMT)
Message-ID: <7a5bc530-e0f1-4eff-b94c-84d2085014c1@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:09:34 -0600
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
 <20250116203527.2102742-11-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-11-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 3M9PPVUxmKAK6536TZfitgZEgaK3q5-G
X-Proofpoint-ORIG-GUID: xGldRKnDKFDPJFO2rv_gc2eeN72-t08S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > Disable internal
 pull down for the following GPIO lines. > - GPIOL4 - Reset PCH registers in
 the rtc. > - GPIOL5 - Reset portition of Intel ME > - GPIOL6 - FM [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tadIr-0004X4-Pz
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 10/10] ARM: dts: aspeed:
 system1: Disable gpio pull down
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
> Disable internal pull down for the following GPIO lines.
> - GPIOL4 - Reset PCH registers in the rtc.
> - GPIOL5 - Reset portition of Intel ME
> - GPIOL6 - FM smi active
> - GPIOL7 - psu all dc power good.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 9abbad07c751..3cf45a39acbe 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -355,7 +355,35 @@ &uhci {
>   	status = "okay";
>   };
>   
> +&pinctrl {
> +	pinctrl_gpiol4_unbiased: gpiol4 {
> +		pins = "C15";
> +		bias-disable;
> +	};
> +
> +	pinctrl_gpiol5_unbiased: gpiol5 {
> +		pins = "F15";
> +		bias-disable;
> +	};
> +
> +	pinctrl_gpiol6_unbiased: gpiol6 {
> +		pins = "B14";
> +		bias-disable;
> +	};
> +
> +	pinctrl_gpiol7_unbiased: gpiol7 {
> +		pins = "C14";
> +		bias-disable;
> +	};
> +};
> +
>   &gpio0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpiol4_unbiased
> +		&pinctrl_gpiol5_unbiased
> +		&pinctrl_gpiol6_unbiased
> +		&pinctrl_gpiol7_unbiased>;
> +
>   	gpio-line-names =
>   	/*A0-A7*/	"","","","","","","","",
>   	/*B0-B7*/	"","","","","bmc-tpm-reset","","","",


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
