Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 209B7A1A445
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLc-0001Ml-Gd;
	Thu, 23 Jan 2025 12:30:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadGW-0008ES-OO
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYcu5q0LTw0tDsc/9X7nacRjTtioaM8Yp0plJ/Pa3nY=; b=m3csEm3BSb4Y6qN8yVqZXlSuFB
 pA0/xfhTyVlMPLqT7ND9bC4oITXbCAkCaQd08R891RFqsrc3S8umudop0J3kHJXySxE0+mJ0I31ju
 qiUIYmDOaPurZuiNMmuCZhXTSHzW7bOsiJYnJFdlMf6q4P/3yfNj74waIfJYvJ38NReo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WYcu5q0LTw0tDsc/9X7nacRjTtioaM8Yp0plJ/Pa3nY=; b=Ddu0bvJ6YYNPjgdVO0iuTzW3Sw
 o2Yz7XfoR02tMWX/6yOGreS4xO0hnrTCJPct1iA104mfuBwxZ/GZZi3fmSgCMTwTb0ND82647FkMO
 fTXBSRqHi/mJR+L+xMNfP0/jYPrSK6j7ZTgadDYD4Yr9m31lBEP0v3JU/Md+nHs6lk+c=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadGW-0004O6-PH for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:07:41 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MCPHgu013713;
 Wed, 22 Jan 2025 16:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=WYcu5q
 0LTw0tDsc/9X7nacRjTtioaM8Yp0plJ/Pa3nY=; b=WwlWWVTRWi4jVsHTfxYmNK
 4xiknLBbykkGFRW/SxM1034WzILDc0VyYq2KXFjcssuhuG1ngL6QvT5oegqnzRIg
 O/YLCspgTcptX+E5w3NRgSyxNs1nL9OWC6X14MYxdgiNuRIeJUZTMOJZtqU0Io8/
 1CS321CTDIyNSTEFKZZmjcLObFZfxqsBiM0IGbZCLYLAeYDwBycVxEAidXzjN/X9
 Yx0oqPeINcvg6oJHX0qbpuJ7aiJoZwJTeE4XRiTOKALXgQRxI537hRWnYLsQLO8Y
 dvfU2s9yUI9VLk309ghOcyfR0NfGakMuD7ClD4cKB8aPhgJXsWBaESRgAtOSvWDQ
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44apr9bsx4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:07:17 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MG7GSl011167;
 Wed, 22 Jan 2025 16:07:16 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44apr9bswx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:07:16 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MDlJpP024231;
 Wed, 22 Jan 2025 16:07:15 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 448q0y9ah7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:07:15 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG7F6J64815534
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:07:15 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 04BD158050;
 Wed, 22 Jan 2025 16:07:15 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 57DF158045;
 Wed, 22 Jan 2025 16:07:12 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:07:12 +0000 (GMT)
Message-ID: <e8d21bad-1256-4164-8dca-58b0d46ab556@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:07:10 -0600
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
 <20250116203527.2102742-8-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-8-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: kTanEyNASlBwnHSHa15M-KkxFGz2YbhF
X-Proofpoint-ORIG-GUID: NJGChWaJwrPnO9pTmeEmh6gtygeB9ReJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_06,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1011 bulkscore=0 phishscore=0 malwarescore=0
 mlxlogscore=898 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501220115
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > Rename LEDs with
 meaningful names for easier identification. Reviewed-by: Eddie James
 <eajames@linux.ibm.com>
 > > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> > --- >
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts
 | 36 +++++++++ > 1 file changed, 18 insertions(+), 18 deletions(-) > > diff
 --git a/a [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tadGW-0004O6-PH
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 07/10] ARM: dts: aspeed:
 system1: Update LED gpio name
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
> Rename LEDs with meaningful names for easier identification.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 36 +++++++++----------
>   1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index ca55a4fb6dff..1e0b1111ea9a 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -116,63 +116,63 @@ vga_memory: region@bf000000 {
>   	leds {
>   		compatible = "gpio-leds";
>   
> -		led-0 {
> +		led-bmc-ready {
>   			gpios = <&gpio0 ASPEED_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-1 {
> +		led-bmc-hb {
>   			gpios = <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-2 {
> +		led-rear-enc-fault0 {
>   			gpios = <&gpio0 ASPEED_GPIO(S, 6) GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-3 {
> +		led-rear-enc-id0 {
>   			gpios = <&gpio0 ASPEED_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-4 {
> +		led-fan0-fault {
>   			gpios = <&pca3 5 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-5 {
> +		led-fan1-fault {
>   			gpios = <&pca3 6 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-6 {
> +		led-fan2-fault {
>   			gpios = <&pca3 7 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-7 {
> +		led-fan3-fault {
>   			gpios = <&pca3 8 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-8 {
> +		led-fan4-fault {
>   			gpios = <&pca3 9 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-9 {
> +		led-fan5-fault {
>   			gpios = <&pca3 10 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-a {
> +		led-fan6-fault {
>   			gpios = <&pca3 11 GPIO_ACTIVE_LOW>;
>   		};
>   
> -		led-b {
> +		led-nvmed0-fault {
>   			gpios = <&pca4 4 GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-c {
> +		led-nvmed1-fault {
>   			gpios = <&pca4 5 GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-d {
> +		led-nvmed2-fault {
>   			gpios = <&pca4 6 GPIO_ACTIVE_HIGH>;
>   		};
>   
> -		led-e {
> +		led-nvmed3-fault {
>   			gpios = <&pca4 7 GPIO_ACTIVE_HIGH>;
>   		};
>   	};
> @@ -368,14 +368,14 @@ &gpio0 {
>   	/*I0-I7*/	"","","","","","","","",
>   	/*J0-J7*/	"","","","","","","","",
>   	/*K0-K7*/	"","","","","","","","",
> -	/*L0-L7*/	"","","","","","","","bmc-ready",
> +	/*L0-L7*/	"","","","","","","","led-bmc-ready",
>   	/*M0-M7*/	"","","","","","","","",
>   	/*N0-N7*/	"pch-reset","","","","","flash-write-override","","",
>   	/*O0-O7*/	"","","","","","","","",
> -	/*P0-P7*/	"","","","","","","","bmc-hb",
> +	/*P0-P7*/	"","","","","","","","led-bmc-hb",
>   	/*Q0-Q7*/	"","","","","","","pch-ready","",
>   	/*R0-R7*/	"","","","","","","","",
> -	/*S0-S7*/	"","","","","","","rear-enc-fault0","rear-enc-id0",
> +	/*S0-S7*/	"","","","","","","led-rear-enc-fault0","led-rear-enc-id0",
>   	/*T0-T7*/	"","","","","","","","",
>   	/*U0-U7*/	"","","","","","","","",
>   	/*V0-V7*/	"","rtc-battery-voltage-read-enable","","power-chassis-control","","","","",


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
