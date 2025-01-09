Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FE5A07924
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 15:26:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVtUR-0008KD-BJ;
	Thu, 09 Jan 2025 14:26:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVtUQ-0008K4-Ek
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YGI476X2i0MFtZ7SlukxL+5rG/T9Y7O8a6nsh6mbAB0=; b=KPm+DB5QmcD2Hym5EJKxQL8l5i
 54fXOu6xsdz98wcvtjteXObwKCpDuHW4sJPc65Wt/smzYhLB3VbqUJvBjJGsQ2gEMuwQumzzTgxwF
 pA0FlogAnh+RRlgd3jQ6PDS603wORWuw+2a0KaMhOpSrczn9Pily776LSdr7V6JGitl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YGI476X2i0MFtZ7SlukxL+5rG/T9Y7O8a6nsh6mbAB0=; b=VN63orVndIR9gTFGv+ROBTYYN+
 yee2PwFjGn/wlK3uRN0Zk+EyVZwbgEM4d0mcFmhLc2gQdaEECByy/vtKHgKrV4mguc3htzyC1HKl4
 1LkKaf91GR6MZ/uFq9WhPciTcwdcC3WAI+fGlYrxQ9Y5ja6UJoPacdv9rrwUymboSU6Y=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVtUP-0007X8-Ky for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:26:26 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5093qwuF005687;
 Thu, 9 Jan 2025 14:25:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=YGI476
 X2i0MFtZ7SlukxL+5rG/T9Y7O8a6nsh6mbAB0=; b=qm6PuVaJR4WO9WPmhDm0tC
 vBUUCSCbyNbnz1u0O+lidpWDmgcn020O/OhoN8RIw9HZsMsK9InAAkUf24btjcq4
 92SbmvNAcF8Aq77oStfScS+nrmu0vGyyoa3pBrPXRfnCNE7Nnh3xBm6gZnh7kd+q
 f9NSwkw/y+g+1Cvo2dBVKmHInaoYYcos7TDJXSwRDK5tZUxMuB2TPtgBafodbZvD
 ca5ihOi7zLyvRlArKSfkf3RkWmB2pXvQNYLkprCreNoNOIMfCAWppL3TSkr0bBcz
 QEF6Tc2qDhOg/CQD2cNRJsDGMWw34IMxGrUksl2GtvleUipj1uG6GC+tXP2klygA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xcake8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2025 14:25:36 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 509E6eqs029952;
 Thu, 9 Jan 2025 14:25:35 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4426xcake4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2025 14:25:35 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 509Cp7bf008861;
 Thu, 9 Jan 2025 14:25:34 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yfq05mne-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2025 14:25:34 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 509EPXrE33751356
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 9 Jan 2025 14:25:34 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D4D3358050;
 Thu,  9 Jan 2025 14:25:33 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3A78658045;
 Thu,  9 Jan 2025 14:25:29 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu,  9 Jan 2025 14:25:28 +0000 (GMT)
Message-ID: <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
Date: Thu, 9 Jan 2025 08:25:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Jacky Chou <jacky_chou@aspeedtech.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
Content-Language: en-US
In-Reply-To: <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: D4QGmI7uFNHCuYmtN7glAX-odTtQtAzr
X-Proofpoint-ORIG-GUID: S-tApofsNQipGoyAdP32TWBQKlVxTdeb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501090112
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andrew, On 1/9/25 07:21, Andrew Lunn wrote: > On Thu, 
 Jan 09, 2025 at 10:33:20AM +0000, Jacky Chou wrote: >> Hi Andrew, >> >>>>
 There are around 11 boards in Aspeed SOC with phy-mode set to "rgmii" >>>>
 (some [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVtUP-0007X8-Ky
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiBbUEFUQ0ggdjIgMDUvMTBd?=
 =?utf-8?q?_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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
From: Ninad Palsule via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Ninad Palsule <ninad@linux.ibm.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Andrew,

On 1/9/25 07:21, Andrew Lunn wrote:
> On Thu, Jan 09, 2025 at 10:33:20AM +0000, Jacky Chou wrote:
>> Hi Andrew,
>>
>>>> There are around 11 boards in Aspeed SOC with phy-mode set to "rgmii"
>>>> (some of them are mac0&1 and others are mac2&3). "rgmii-rxid" is only
>>> mine.
>>>> No one in aspeed SOC using "rgmii-id".
>>> O.K, so we have to be careful how we fix this. But the fact they are all equally
>>> broken might help here.
>>>
>>>>> Humm, interesting. Looking at ftgmac100.c, i don't see where you
>>>>> configure the RGMII delays in the MAC?
>>> This is going to be important. How are delays configured if they are not in the
>>> MAC driver?
>> The RGMII delay is adjusted on clk-ast2600 driver. Please refer to the following link.
>> https://github.com/AspeedTech-BMC/linux/blob/f52a0cf7c475dc576482db46759e2d854c1f36e4/drivers/clk/clk-ast2600.c#L1008
> O.K. So in your vendor tree, you have additional DT properties
> mac1-clk-delay, mac2-clk-delay, mac3-clk-delay. Which is fine, you can
> do whatever you want in your vendor tree, it is all open source.
>
> But for mainline, this will not be accepted. We have standard
> properties defined for configuring MAC delays in picoseconds:
>
>          rx-internal-delay-ps:
>            description:
>              RGMII Receive Clock Delay defined in pico seconds. This is used for
>              controllers that have configurable RX internal delays. If this
>              property is present then the MAC applies the RX delay.
>          tx-internal-delay-ps:
>            description:
>              RGMII Transmit Clock Delay defined in pico seconds. This is used for
>              controllers that have configurable TX internal delays. If this
>              property is present then the MAC applies the TX delay.
>
>
> You need to use these, and in the MAC driver, not a clock driver. That
> is also part of the issue. Your MAC driver looks correct, it just
> silently passes phy-mode to the PHY just like every other MAC
> driver. But you have some code hidden away in the clock controller
> which adds the delays. If this was in the MAC driver, where it should
> be, this broken behaviour would of been found earlier.
>
> So, looking at mainline, i see where you create a gated clock. But
> what i do not see is where you set the delays.
>
> How does this work in mainline? Is there more hidden code somewhere
> setting the ASPEED_MAC12_CLK_DLY register?

I think the code already exist in the mainline: 
https://github.com/torvalds/linux/blob/master/drivers/clk/clk-ast2600.c#L595

It is configuring SCU register in the ast2600 SOC to introduce delays. 
The mac is part of the SOC.

Regards,

Ninad

>
> 	Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
