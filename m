Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DFDA06857
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 23:33:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVeby-0008BI-3y;
	Wed, 08 Jan 2025 22:33:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVebw-0008BB-TO
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 22:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KlRCuGPMlwejbHsntRyxIV2YbKHWZVl6PpAh0SlJ7uk=; b=OKtdI3W2XzP11nEm2URe7j3hV4
 JzX1co9AEiXg5znG648bNzgFBKiRchZicjfPtOyknm3BL0iWnzmy9XxcXSElaKRmypopiWHB639Ap
 T2zJtvlbvzfHsjrjdXOt0hIekHA6epfrVdRe5dN81xbgierhU1B2XXxl/HJxbcKTjI7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KlRCuGPMlwejbHsntRyxIV2YbKHWZVl6PpAh0SlJ7uk=; b=cMQd36krO7NsH1NrXbppm/rHwB
 9GxjE1VEXuuUEUQMsqo/n8z/45ReXPpPcgSSQwkJa7k0hYthqMhP1LJa/ZG9oBBKwx63aM17SznVF
 8N93EWsXaZQNROop1EGc14/FE2HURrRZanBd85PAXdGwJVFfjs+LFRnWFSEec0FFwqdg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVebv-0004G6-FL for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 22:33:12 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508Eq5hO017974;
 Wed, 8 Jan 2025 22:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=KlRCuG
 PMlwejbHsntRyxIV2YbKHWZVl6PpAh0SlJ7uk=; b=Y7hv7dbWvdQz7PK+ZEV0Yt
 68MJwPffxgt3I7dOB4MMEgHpvTwa+nfyXdn0yITIRovp3+6ofQsxi0KDFXfPdDzs
 RAnIfGdy+dd2+3HKp0FPC9A8Trw+E4lCP1AeDhtbc3e9YKsj2CxA4D+o8d/Elh3s
 30ekYqllsNpooSgPNN97PoM+7GASKgvUd7JZHVSBpxZN7Pi9uqlPI4SE9azFTdE8
 ZuQ/03szX3Bh2VBObAMLs2aRTWsTLszu4c9ELDZ39QI3KwftgmuGE9LPAwFEfNmj
 ZMN52e2C7A+Xu1e9dCOFM8Bnky0J9xoHiCZ+2dVfH1/CC3jBwo12PDCgrcgDMx6A
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441huc4uj1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 22:31:34 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 508MSagq026621;
 Wed, 8 Jan 2025 22:31:34 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441huc4uhv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 22:31:33 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 508Jx6pX003572;
 Wed, 8 Jan 2025 22:31:32 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yfata8nv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 22:31:32 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 508MVWUL54854004
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Jan 2025 22:31:32 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 263FE5806B;
 Wed,  8 Jan 2025 22:31:32 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5DC925804E;
 Wed,  8 Jan 2025 22:31:29 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed,  8 Jan 2025 22:31:29 +0000 (GMT)
Message-ID: <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
Date: Wed, 8 Jan 2025 16:31:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Jacky Chou <jacky_chou@aspeedtech.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
Content-Language: en-US
In-Reply-To: <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: uaFUIc6cD4X9PAgDaJFKrNEJKqlvTD0C
X-Proofpoint-GUID: 6xbf0HjJ6pVuQmMW_ljUl1BLsijg_a4W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 mlxscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501080184
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andrew & Jacky, On 1/8/25 11:52, Andrew Lunn wrote:
 >>> Does the mac0 TX clock have an extra long clock line on the PCB? >>> >>>
 Does the mac1 TX and RX clocks have extra long clock lines on the PCB? >>>
 >>> Anything [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tVebv-0004G6-FL
Subject: Re: [Openipmi-developer] [PATCH v2 05/10] ARM: dts: aspeed:
 system1: Add RGMII support
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

Hello Andrew & Jacky,

On 1/8/25 11:52, Andrew Lunn wrote:
>>> Does the mac0 TX clock have an extra long clock line on the PCB?
>>>
>>> Does the mac1 TX and RX clocks have extra long clock lines on the PCB?
>>>
>>> Anything but rgmii-id is in most cases wrong, so you need a really
>>> good explanation why you need to use something else. Something that
>>> shows you understand what is going on, and why what you have is
>>> correct.
>> Here I'll add some explanation.
>>
>> In our design, we hope the TX and RX RGMII delay are configured by our MAC side.
>> We can control the TX/RX RGMII delay on MAC step by step, it is not a setting to delay to 2 ns.
>> We are not sure the all target PHYs are support for RX internal delay.
>>
>> But ast2600 MAC1/2 delay cell cannot cover range to 2 ns, MAC 3/4 can do that.
>> Therefore, when using ast2600 MAC1/2, please enable the RX internal delay on the PHY side
>> to make up for the part we cannot cover.
>>
>> Summarize our design and we recommend.
>> AST2600 MAC1/2: rgmii-rxid
>> (RGMII with internal RX delay provided by the PHY, the MAC should not add an RX delay in this
>> case)
>> AST2600 MAC3/4: rgmii
>> (RX and TX delays are added by the MAC when required)
>>
>> rgmii and rgmii-rxid are referred from ethernet-controller.yaml file.
> O.K, so you have the meaning of phy-mode wrong. phy-mode effectively
> described the PCB. Does the PCB implement the 2ns delay via extra long
> clock lines or not. If the PCB has long clock lines, phy-mode is
> 'rgmii'. If the PCB does not have long clock lines, 'rgmii-id' is
> used, meaning either the MAC or the PHY needs to add the delays.
>
> The MAC driver is the one that reads the phy-mode from the DT, and
> then it decides what to do. 95% of linux MAC drivers simply pass it
> direct to the PHY. If the phy-mode is 'rgmii', the PHY does nothing,
> because the PCB has added the delays. If it is rgmii-id, it adds
> delays in both directions. This works, because nearly very RGMII PHY
> on the market does support RGMII delays.
>
> There is however a very small number of MAC drivers which do things
> differently. Renesas produced an RDK with a PHY which could not do
> delays in the PHY, and so were forced to do the delays in the
> MAC. Please look at how the ravb driver works. If the PCB does not add
> the delays, rmgii-id, the MAC driver adds the delays. It then masks
> the phy-mode it passes to of_phy_connect() back to 'rgmii', so that
> the PHY does not add any delays. If the PCB did add the delays,
> 'rgmii', the MAC driver does not add delays, and it passed rgmii to
> the PHY driver, and it also does not add delays.
>
> So, your MAC driver is broken. It is not correctly handling the
> phy-mode. First question is, how many boards are there in mainline
> which have broken phy-modes. If this is the first board, we can fix
> the MAC driver. If there are already boards in mainline we have to be
> much more careful when fixing this, so as not to regress boards which
> are already merged.

There are around 11 boards in Aspeed SOC with phy-mode set to "rgmii" 
(some of them are mac0&1 and others are mac2&3). "rgmii-rxid" is only mine.

No one in aspeed SOC using "rgmii-id".

>
> Humm, interesting. Looking at ftgmac100.c, i don't see where you
> configure the RGMII delays in the MAC?
>
> 	  Andrew
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
