Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1940EA1A442
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 13:30:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tawLb-0001MJ-Jr;
	Thu, 23 Jan 2025 12:30:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eajames@linux.ibm.com>) id 1tadDL-00089v-07
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=emNQhmJZ7Z2JjtO0Y32AqnVeH+QmdhmkBmXJky0AeRc=; b=ND8bihF5+rJtztxrRmTmMARJXi
 0GilijpTnNcdx1Dyr4QA+z0os/LTxcYcBB+DtOav+MF7uEGicvm29+tjcSxhVA97HmEsebIojFKDo
 VVQ8L1hwNRyz8YvhMpvTBZniC1XeiKGe4jCy976fTNfW8wFqS8RZGMq3fyKrHaiyjjYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=emNQhmJZ7Z2JjtO0Y32AqnVeH+QmdhmkBmXJky0AeRc=; b=E0WEyIAmZ7v3a02Br6Ns1IFfzb
 aBmxq3Ov7JtKf8OJgd398xcYSLuRfA4wDndko5uNdOVEOrC5R/qxc33bhZ7OES+AN+S9NZ9TU2D43
 KHM+pce6lExIUO/yGabC0oO2PLBJBqI+3qtX0cY3GVOV7coglhc2j+HTh1Zb9df3U7U8=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tadDK-00049S-Oz for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 16:04:23 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MDStHH002851;
 Wed, 22 Jan 2025 16:03:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=emNQhm
 JZ7Z2JjtO0Y32AqnVeH+QmdhmkBmXJky0AeRc=; b=Po+DroPKIy7p2yAGzsacy/
 9+BTGd4ojmtGEjWqofWqNbyoGP/aDPGE9xUSRltcKasJfWo3xN7UaWCz5HuxAxw7
 SDSLj2ucSnPsUhRF2ZSv2MbTAxVpiZaRGJ4nJWS7LCK+YksFNVQgKD2nquUcU6mo
 gQkCUd8PrfsxP3X+dkXZXEYVV3tLyNNT+4bdhPa2STR7bn6cJUUp1CxUNn4mA/R5
 1ccMYv72HqNcIYyct2HmRFEBcABsdFbsUlMx1uh9IrnxrFphxebZm53VHLuFjq1e
 vJAT/BA/tBt7QZX3JZnAUwpadM4fLuMZlO31lBHssCMzatCWypewPnE5fqe7chZw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44aqgykffb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:03:49 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MG0aTa032553;
 Wed, 22 Jan 2025 16:03:48 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44aqgykff9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:03:48 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MDkxai019261;
 Wed, 22 Jan 2025 16:03:47 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 448pmshbdu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 16:03:47 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MG3lY513894332
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 16:03:47 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E685658054;
 Wed, 22 Jan 2025 16:03:46 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0DC2958052;
 Wed, 22 Jan 2025 16:03:46 +0000 (GMT)
Received: from [9.61.66.14] (unknown [9.61.66.14])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 16:03:45 +0000 (GMT)
Message-ID: <4d44da2b-657c-46d3-9e56-92bbc655f46d@linux.ibm.com>
Date: Wed, 22 Jan 2025 10:03:43 -0600
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
 <20250116203527.2102742-5-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-5-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 9MM7J9VC_-lk4OuohgaJMglYoGtvsthY
X-Proofpoint-ORIG-GUID: 2FJpZuPGP5oAj8zaLR2klah2YAt0O69V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_07,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=856
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220118
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/16/25 14:35,
 Ninad Palsule wrote: > Add IPMB device sitting
 behind PCH module Reviewed-by: Eddie James <eajames@linux.ibm.com> > >
 Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> > --- >
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
 | 9 +++++++++ > 1 file changed,
 9 insertions(+) > > diff --git a/arch/arm/boot/dts/as [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
X-Headers-End: 1tadDK-00049S-Oz
X-Mailman-Approved-At: Thu, 23 Jan 2025 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 04/10] ARM: dts: aspeed:
 system1: Add IPMB device
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
> Add IPMB device sitting behind PCH module


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>   arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> index 8f77bc9e860c..0d16987cfc80 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
> @@ -763,6 +763,15 @@ i2c3mux0chn7: i2c@7 {
>   
>   &i2c4 {
>   	status = "okay";
> +	multi-master;
> +	bus-frequency = <1000000>;
> +
> +	ipmb@10 {
> +		compatible = "ipmb-dev";
> +		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +
> +		i2c-protocol;
> +	};
>   };
>   
>   &i2c5 {


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
