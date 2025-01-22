Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16866A1A441
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLc-0001MX-75;
	Thu, 23 Jan 2025 12:30:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadF8-0002rN-Ob
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:06:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yqgb4Hb9dr4ruSA5GdqAAEQ+DZqHMDCn+QIelLJfXgQ=; b=DhMgRUqCcSGJrYfBs8F3GC/oiB
 bjnr1+ienO87DlFzccWeukkINWt6ECRNxEUDNdCFU8HiiT7JpWhk3anhf6KV9O8GUZpEKcbC6FMQJ
 ZBwiBFl65P8V+XDhvthG4lsMClLaDKSnauq6d8RHiIGagocKZ1Dm/idMABZjPaLeHX70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yqgb4Hb9dr4ruSA5GdqAAEQ+DZqHMDCn+QIelLJfXgQ=; b=Cf8SoAK713b8eJYPNsIHfkCtaC
 Qj56uSnFoPZtY3N7l5y9DvLjF7cEFW7BUeK92PfnktT50dvXZJoWcDW6aPaq1LHZk4fSKO2jUb83N
 XuicE26kgQI4V6pyr+nRAGX7JcZ+na7CeRWlQDvRZikLGNFmmQ/srjIrYrth9CjaeSVg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadF8-0004Ge-2r for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:06:14 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MF1lUi027803;
 Wed, 22 Jan 2025 16:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=Yqgb4H
 b9dr4ruSA5GdqAAEQ+DZqHMDCn+QIelLJfXgQ=; b=rNtbHjXj+UIPEaJXkF73TL
 3xBMS7BlChM5lZbSBjfkwPbjTNvGFbJifn83Z06kSeh5HEjLEvN4IMTh+tL31lZF
 bQHjOdzGbVg7FBlBd1ZrbIiNKgxUKDgGZOAxCXPr0i1SuHkX64VAFWQw55HX+5LZ
 m+SyqX4vCDjhwWwDBCt5PFCWahhrObfudrehvNn26EEoEjaaIKzfyNhWRyZYr622
 DHeeM4BYtk6TZBwkoWmxwg3fratDewtoVCdM1pP8/hqPccThgZbhfXPzcH36TlM8
 QimLPRzzv5IiVq1wa8uPeR02Xqo617OkUtaBKUDDRAx+dHyaRnQ8yB9dmVMLPaqQ
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44b2xygbnp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:05:46 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MG3h8J005920;
 Wed, 22 Jan 2025 16:05:45 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44b2xygbnh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:05:45 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50METKrt022449;
 Wed, 22 Jan 2025 16:05:44 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 448r4k9204-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:05:44 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG5hLR13894358
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:05:43 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 66CB658054;
 Wed, 22 Jan 2025 16:05:43 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 68E8E58052;
 Wed, 22 Jan 2025 16:05:42 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:05:42 +0000 (GMT)
Message-ID: <60445b72-8582-40ac-a662-330667efe88b@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:05:40 -0600
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
 <20250116203527.2102742-7-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-7-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 4gkP31nbzvFzigDO8wMfyvtYGuHlaZiX
X-Proofpoint-ORIG-GUID: hoZfqMlnWqqRJdnmdG1CMmpu0d1AzD-m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 mlxlogscore=613 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > Reduce sgpio speed
 to improve stability with the current PCB layout. Reviewed-by: Eddie James
 <eajames@linux.ibm.com> > > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
 > --- > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 2 +- > 1 file
 changed, 1 insertion(+), 1 deletion(-) > > diff --git a/arch/arm/boot [...]
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tadF8-0004Ge-2r
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 06/10] ARM: dts: aspeed:
 system1: Reduce sgpio speed
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
> Reduce sgpio speed to improve stability with the current PCB layout.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 973169679c8d..ca55a4fb6dff 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -401,7 +401,7 @@ &emmc {
>   &sgpiom0 {
>   	status = "okay";
>   	ngpios = <128>;
> -	bus-frequency = <1000000>;
> +	bus-frequency = <500000>;
>   };
>   
>   &ibt {


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
