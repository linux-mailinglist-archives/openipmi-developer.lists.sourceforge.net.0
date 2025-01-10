Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB0A092EC
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 15:06:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWFeL-0008D5-CD;
	Fri, 10 Jan 2025 14:06:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tWFeJ-0008Cq-Ad
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SzKJtkY+MJUb5JMhu78TtdXOKjCWS6RnEjQeUjrVomI=; b=Mr0f5q5KnzdzMlOnmjHKd8+7hO
 eoxTj/KVvlqzERkgcnb2rfCv/gxZcv5dCXmvh89kkEPMoeihgN2qyf3mGmoUV0RdamCZ7O/gK5T/K
 J9lzeVvl6dRCvp2rOD7E5fvubrT6ro/OvHFnxOxVhTw6553nc6MjSHhb5Qz6T03xMgCU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SzKJtkY+MJUb5JMhu78TtdXOKjCWS6RnEjQeUjrVomI=; b=MYJCgiqmgBbasTVDtHyG9Sii5V
 GSMAuvLhyCLIPacJ2DZ5f24fyYdO9sOK89c3pIj3AsAP4byh0ZX/jJu0Iz2p6MIrhSjUXhf3Pi5wq
 s9yk+vpMTNIwZHYTgknIUMNVb32vu7d3AE3a+otnbiPtRUM8JBUzN2vtmNZxLsojtynY=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWFeI-0006Tf-GV for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:06:07 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A3qQbG013130;
 Fri, 10 Jan 2025 14:05:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=SzKJtk
 Y+MJUb5JMhu78TtdXOKjCWS6RnEjQeUjrVomI=; b=At/YlyB0ExjZ8DYF7gwLF6
 TcYu0vC3QfTl67c6tQsHTvPkg2AocXyd8Z+XEtNmUKugCJGqb/NDQgDue3C8yqW5
 84t2sOHRYcbw1XXSLpDubeN8s+X9v0fyaHMhiKP3ij2AK/iX3z6iKJx7+c5V2wAZ
 kMo1WjsTJ5lO3+UjWKBfUz0+iXpbyxHnNPq+v/Nn0iKk9zUMi5VwgdmUNhgcjykt
 a68PQqhFfT9ojMrCEnC5qGtUuxSe8Pb3sSP9zMWU/1afFUOXuGgZ6TLNlcwlHl+O
 U7UIM/N4sZzpkCphjDqkRhTpoIReA+ua8lYTV0AstDT/3BEijnjFlBrukw8wjwWw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 442v1btb0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:05:08 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50ADrLxL024750;
 Fri, 10 Jan 2025 14:05:07 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 442v1btb0a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:05:07 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50ADgQTm013663;
 Fri, 10 Jan 2025 14:05:06 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygapagfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:05:06 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com
 [10.39.53.232])
 by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50AE55p832375454
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Jan 2025 14:05:05 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3A6AE5805F;
 Fri, 10 Jan 2025 14:05:05 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7B06C5805D;
 Fri, 10 Jan 2025 14:05:01 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Fri, 10 Jan 2025 14:05:01 +0000 (GMT)
Message-ID: <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
Date: Fri, 10 Jan 2025 08:05:00 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacky Chou <jacky_chou@aspeedtech.com>, Andrew Lunn <andrew@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: MeLhr7O8jd-8ePzsQCuKHXgiTwl7M1Df
X-Proofpoint-GUID: pZcWXJhEmsFDJ3lvW_ilyppMTvEAo7cz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100110
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacky, On 1/10/25 03:15, Jacky Chou wrote: > Hi Andrew,
 > > Thank you for your reply. > >>> I think the code already exist in the
 mainline: >>> https://github.com/torvalds/linux/blob/master/drivers/clk/clk-a
 [...] Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tWFeI-0006Tf-GV
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IFtQQVRDSCB2?=
 =?utf-8?q?2_05/10=5D_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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

Hi Jacky,

On 1/10/25 03:15, Jacky Chou wrote:
> Hi Andrew,
>
> Thank you for your reply.
>
>>> I think the code already exist in the mainline:
>>> https://github.com/torvalds/linux/blob/master/drivers/clk/clk-ast2600.
>>> c#L595
>>>
>>> It is configuring SCU register in the ast2600 SOC to introduce delays.
>>> The mac is part of the SOC.
>> I could be reading this wrong, but that appears to create a gated clock.
>>
>> hw = clk_hw_register_gate(dev, "mac1rclk", "mac12rclk", 0,
>> 	       		scu_g6_base + ASPEED_MAC12_CLK_DLY, 29, 0,
>> 			&aspeed_g6_clk_lock);
>>
>> /**
>>   * clk_hw_register_gate - register a gate clock with the clock framework
>>   * @dev: device that is registering this clock
>>   * @name: name of this clock
>>   * @parent_name: name of this clock's parent
>>   * @flags: framework-specific flags for this clock
>>   * @reg: register address to control gating of this clock
>>   * @bit_idx: which bit in the register controls gating of this clock
>>   * @clk_gate_flags: gate-specific flags for this clock
>>   * @lock: shared register lock for this clock  */
>>
>> There is nothing here about writing a value into @reg at creation time to give
>> it a default value. If you look at the vendor code, it has extra writes, but i don't
>> see anything like that in mainline.
> Agree. You are right. This part is used to create a gated clock.
> We will configure these RGMII delay in bootloader like U-boot.
> Therefore, here does not configure delay again.
>
> Currently, the delay of RGMII is configured in SCU region not in ftgma100 region.
> And I studied ethernet-controller.yaml file, as you said, it has defined about rgmii
> delay property for MAC side to set.
> My plan is that I will move this delay setting to ftgmac100 driver from SCU.
> Add a SCU syscon property for ftgmac100 driver configures the RGMII delay.
>
> // aspeed-g6.dtsi
> mac0: ethernet@1e660000 {
> 			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
> 			reg = <0x1e660000 0x180>;
> 			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> 			clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>;
> 			aspeed,scu = <&syscon>;    ------> add
> 			status = "disabled";
> 		};
>
> Because AST2600 MAC1/2 RGMII delay setting in scu region is combined to one 32-bit register,
> MAC3/4 is also. I will also use 'aliase' to get MAC index to set delay in scu.
>
> // aspeed-g6.dtsi
> aliases {
> 		..........
> 		mac0 = &mac0;
> 		mac1 = &mac1;
> 		mac2 = &mac2;
> 		mac4 = &mac3;
> 	};
>
> Then, we can use rx-internal-delay-ps and tx-internal-delay-ps property to configure delay
> In ftgmac100 driver.

Thanks. When are you planning to push this change? I might need to hold 
on to mac changes until then.

Regards,

Ninad

>
> If you have any questions, please let me know. Thank you.
>
> Thanks,
> Jacky


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
