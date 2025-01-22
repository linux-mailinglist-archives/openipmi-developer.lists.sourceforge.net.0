Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A1A1A440
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLb-0001MP-TT;
	Thu, 23 Jan 2025 12:30:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadEH-0003ch-3H
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q2ub9zL+dX4HfWghjeSU/uYyolAvvvvHUZ+3ezdkEbY=; b=hF1ifBcT1pJtPsoS/xhLGM8wI5
 MHkWvJY0Q/c5K0Icxsp5ykNBvIqE2saSMUFGeWrJwkVGZ3lu8QfDwidqj0Nxpi/1m1mk1WmcISvgi
 PzMMI6bxKFMt246fWPMTfvQOU7pvouI8ElLR29BuT+wWUF7xiNLBnTIwti9IU7eoAkGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q2ub9zL+dX4HfWghjeSU/uYyolAvvvvHUZ+3ezdkEbY=; b=aHnOSmt4dZEbs6ylP44Hmvtq1b
 Bj4TqxtYwZVAkoT7Lbdxzz8HxwNaI/hVsnd1g2eSzXa657nkJtabY4W85RhpgU3pKQY5XYYkH8JZV
 4SxHtdL2NtKtKxQG7C6AlCPjTb4cmnFwqNufMZ3Uv7tYQUKUsSkPHYAztX/iLfEoWTFM=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadED-0004CX-9d for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:05:17 +0000
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50M7Wu3g012829;
 Wed, 22 Jan 2025 16:04:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=q2ub9z
 L+dX4HfWghjeSU/uYyolAvvvvHUZ+3ezdkEbY=; b=cYTaAN1L5CwFBHJvu1UfeV
 N6QfMDZEfz8EaKRjftMqZeVbPDKlBkFQtTCe/YMUxAOr+nPMECnBbZjLMUuKANsR
 tknJ2X3cZ04wNr4+4a6tHrz6GZwKedT8VNkPoJxIo9gF2qykEHJq5gQUYJ6pxHCD
 kgUlgScH9DvUpYBMe6E+5BAxc7psQB2C5X0HqTJ7VglcyRvTr7FaoZJvafZwc6Km
 2JSOMoWpyjBoxBRG5iHE38YSXzbWh6QTukQmvwnE7eh8/O0UY/HClZP6yO0F3KGq
 /fLQ2JqphfgOyzmwjnLvfLvZYrW1HQWqd9T/nlKUDw9wzwp1sAJtAH8bGJF7dSaA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2akx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:04:47 +0000 (GMT)
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MFTGTm008895;
 Wed, 22 Jan 2025 16:04:46 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2aku-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:04:46 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MD6dHd019252;
 Wed, 22 Jan 2025 16:04:46 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 448pmshbhk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:04:46 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG4jNX27329040
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:04:45 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4B69B58045;
 Wed, 22 Jan 2025 16:04:45 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6708058050;
 Wed, 22 Jan 2025 16:04:44 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:04:44 +0000 (GMT)
Message-ID: <3628ffd5-e1bd-4092-9b19-ebb0bfdd5b33@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:04:42 -0600
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
 <20250116203527.2102742-6-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-6-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: hIuAdrje0LogGtfM8pFI2jTDgtcyHuq_
X-Proofpoint-GUID: t5XKzSrdBav_JmniWaN9kN9wQ3Vjm0NJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0
 bulkscore=0 mlxlogscore=849 spamscore=0 phishscore=0 mlxscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35, Ninad Palsule wrote: > Add following GPIO
 line name so that userspace can control them > - Flash write override > -
 pch-reset Reviewed-by: Eddie James <eajames@linux.ibm.com> > > Signed-off-by:
 Ninad Palsule <ninad@linux.ibm.com> > --- >
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
 | 2 +- > 1 file changed, 1 insertion(+),
 1 deletion(-) > > diff --git a/arch/arm/boot [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tadED-0004CX-9d
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 05/10] ARM: dts: aspeed:
 system1: Add GPIO line name
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
> Add following GPIO line name so that userspace can control them
>      - Flash write override
>      - pch-reset


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 0d16987cfc80..973169679c8d 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -370,7 +370,7 @@ &gpio0 {
>   	/*K0-K7*/	"","","","","","","","",
>   	/*L0-L7*/	"","","","","","","","bmc-ready",
>   	/*M0-M7*/	"","","","","","","","",
> -	/*N0-N7*/	"fpga-debug-enable","","","","","","","",
> +	/*N0-N7*/	"pch-reset","","","","","flash-write-override","","",
>   	/*O0-O7*/	"","","","","","","","",
>   	/*P0-P7*/	"","","","","","","","bmc-hb",
>   	/*Q0-Q7*/	"","","","","","","pch-ready","",


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
