Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB8AA1A443
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLc-0001NB-Pp;
	Thu, 23 Jan 2025 12:30:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadHq-0003gk-3V
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XsIby4bR5GOqP/Cv+s8O43f+W/x09XgZSgPMR4bkM3k=; b=C12lYzPlrhHr7DTLO/87bcY2Pg
 IHkuN7QK5Cf95y/KxKSrJve6tSZMzhPidfKRPZHjjp+n8FARydMLupEyWHoxfKNjEKtzvuh71n4x3
 k6I0v6FzpsQnfZpqrKOwV2w7YNXNoO1Vrk/DkLH0IDwdsH2ilgGvKLg5IK0qevpyddjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XsIby4bR5GOqP/Cv+s8O43f+W/x09XgZSgPMR4bkM3k=; b=OmLAs6BDEbd/YImR3a9rEAXpqe
 0+7mkOTYbNJiNVJIiaFHg//6p89cS1JmI9g02q4eI0govDFKjztArYMvNa2mPrb38PscxAXPjrNT7
 l8lPRIvqcAioyQU3rfa8F/fHyZNmYnxvP96AI2iKsnYedVP8CsWGvTZY3otfof9q15f0=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadHp-0004U7-DC for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:09:02 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MFP5lG016311;
 Wed, 22 Jan 2025 16:08:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=XsIby4
 bR5GOqP/Cv+s8O43f+W/x09XgZSgPMR4bkM3k=; b=KPzIrcaQ47YkhM1NCI61wf
 x9Hwtl03TDPkEqIr6C26aKCcXrcA9bqbxqvWwRvGzmasGHLNweUxQ12J6sVbffNU
 uIfowNOi1yBdQuiaJrhW89cC2aR9RnqcwQTNhMYbg/oDfBxY70bjG5BL6p8NFWUY
 5VBhhgx/MlEJeEtYU5pNa8MYDw/6hPdSHjk/4d3ReobQm166GEa2Jq3KE0QkMjOA
 zYwqUWN4F+QEv8OaF9RkCLOHt62w+pkjQ4oI8p3kSEAVuh20yixYgYL4/Wl7t//m
 C/kSzbGagirBY0ysdrS8RZcwI13BSI3TsipuR7CC6f0SqEO5vHEaKvUcH7MgPRcw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44atg82wge-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:08:34 +0000 (GMT)
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MFtTq4030173;
 Wed, 22 Jan 2025 16:08:33 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44atg82wgc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:08:33 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MDBQ4f019330;
 Wed, 22 Jan 2025 16:08:32 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 448pmshc0a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:08:32 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG8W9q15991516
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:08:32 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EDD3058050;
 Wed, 22 Jan 2025 16:08:31 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 13C3F58045;
 Wed, 22 Jan 2025 16:08:31 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:08:30 +0000 (GMT)
Message-ID: <7a6d9cea-ae87-46b2-b43c-daa6325bf75d@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:08:28 -0600
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
 <20250116203527.2102742-10-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-10-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: M_fT9WcjVjZCTKLWWgVt48FEY6HcINkh
X-Proofpoint-ORIG-GUID: Ak-1TAAN3GOtGrtJE-O8TGhsb5b43imM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 clxscore=1011 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > - Mark following
 GPIO lines as input high: > - GPIOL4 (reset PCH registers) > - GPIOL5 (reset
 portition of intel ME) > - Mark isolate errors from cpu1 gpio (GP [...] 
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
X-Headers-End: 1tadHp-0004U7-DC
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 09/10] ARM: dts: aspeed:
 system1: Mark GPIO line high/low
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
> - Mark following GPIO lines as input high:
>    - GPIOL4 (reset PCH registers)
>    - GPIOL5 (reset portition of intel ME)
> - Mark isolate errors from cpu1 gpio (GPIOO6) as active low output.
> - The fan controller reset line should be active high.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 089a8315753a..9abbad07c751 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -383,6 +383,34 @@ &gpio0 {
>   	/*X0-X7*/	"fpga-pgood","power-chassis-good","pch-pgood","","","","","",
>   	/*Y0-Y7*/	"","","","","","","","",
>   	/*Z0-Z7*/	"","","","","","","","";
> +
> +	pin-gpio-hog-0 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(L, 4) GPIO_ACTIVE_HIGH>;
> +		input;
> +		line-name = "RST_RTCRST_N";
> +	};
> +
> +	pin-gpio-hog-1 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(L, 5) GPIO_ACTIVE_HIGH>;
> +		input;
> +		line-name = "RST_SRTCRST_N";
> +	};
> +
> +	pin-gpio-hog-2 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(L, 6) GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "BMC_FAN_E3_SVC_PEX_INT_N";
> +	};
> +
> +	pin-gpio-hog-3 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(O, 6) GPIO_ACTIVE_LOW>;
> +		output-low;
> +		line-name = "isolate_errs_cpu1";
> +	};
>   };
>   
>   &emmc_controller {


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
