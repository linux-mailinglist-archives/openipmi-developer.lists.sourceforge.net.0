Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 610D4A0C215
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 20:52:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXQUZ-0005FV-Lo;
	Mon, 13 Jan 2025 19:52:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXQUY-0005FO-D9
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gxfl05rEtPi8TykQ9QWVEg0MU5uCG4bE8pKLfbkmBoM=; b=LPECA9eiYs0LQw0RTYuv6a6IAr
 gVaezruKRJlPzZIMkdfHfHN2IJQVT8L7p7mOMvfjSqpnGghQggHUrdOinV88jTQ1yJwIHw34BhQVM
 eoR9ecerYeiw8vdOuTsu7DvOPoCmB/MXYoQhrQJXiXDPO0wgkcPosgRwVbYLi6oKHn+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gxfl05rEtPi8TykQ9QWVEg0MU5uCG4bE8pKLfbkmBoM=; b=IuzhClKHsNAGpRpnKGOHJz+Dxd
 AT3ZqDq2Jb5OwF3ZutKjv5C0yu8Edpr0wYYXu+qMyLj7GxlYJ1JUhOwsJJggVHSwBwgxEIineMj8k
 ipVxayWXZs9Q5nM3bMBPlc+SpNaiPY0g6UnE2qsPkhlFNDFw7NK43s5ogDDlNQg+Yh7U=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXQUX-0000t9-KO for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:52:54 +0000
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DBwHMp024143;
 Mon, 13 Jan 2025 19:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=gxfl05
 rEtPi8TykQ9QWVEg0MU5uCG4bE8pKLfbkmBoM=; b=B5LUh+VgN3WK/GxgMfApyL
 zDK2JB86xVFtqkh2cISfja7SdVtOsIfkGleQzynw6Piylorb/2us6xzEeoukuQot
 dAFLlcFPUq1Dy4nmJN3LwWPknBMPu5XagwtLREWveMQ8Ja5OVu7SogufvkYi8w1l
 r93va9nGzztbSiS+6nSIEy3MiVOTLcHqBQyWAU3peLOp5LcyOOT74MNka5aZKhT+
 pY3A1y/SdCxh3cPB/jbMtSDqplAF1ENBHzsX9sLyZFrgMN93Yn5jthXy+DnLG2We
 uombPBbmzmebvuAtrUsPTfV2bdOLDT7qGqBK6A2esZdY9TuHPYmiYNMuBnWtf3vQ
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444qjameav-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:52:05 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50DJcxT5031944;
 Mon, 13 Jan 2025 19:52:05 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444qjameaq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:52:05 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50DGREZB016991;
 Mon, 13 Jan 2025 19:52:04 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([172.16.1.72])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4444fjyrwn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:52:04 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com
 [10.241.53.101])
 by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50DJq3p520972040
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2025 19:52:04 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AFB9A5805E;
 Mon, 13 Jan 2025 19:52:03 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2274F5805A;
 Mon, 13 Jan 2025 19:52:02 +0000 (GMT)
Received: from [9.61.105.40] (unknown [9.61.105.40])
 by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 Jan 2025 19:52:01 +0000 (GMT)
Message-ID: <a8893ef1-251d-447c-b42f-8f1ebc9623bb@linux.ibm.com>
Date: Mon, 13 Jan 2025 13:52:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <173637565834.1164228.2385240280664730132.robh@kernel.org>
Content-Language: en-US
In-Reply-To: <173637565834.1164228.2385240280664730132.robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: PvzTUGLChZmlLTohpy8SLvK47px5mEq9
X-Proofpoint-ORIG-GUID: slslK2Na7MpzUMJx3_V1bJjHIgILrmix
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0
 mlxlogscore=886 mlxscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130156
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, On 1/8/25 16:34, Rob Herring (Arm) wrote: > On Wed,
 08 Jan 2025 10:36:28 -0600, Ninad Palsule wrote: >> Hello, >> >> Please review
 the patch set. >> >> V3: >> --- >> - Fixed dt_binding_check warnings [...]
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tXQUX-0000t9-KO
Subject: Re: [Openipmi-developer] [PATCH v3 00/10] DTS updates for system1
 BMC
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
Cc: minyard@acm.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
 pabeni@redhat.com, ratbert@faraday-tech.com, linux-aspeed@lists.ozlabs.org,
 netdev@vger.kernel.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, krzk+dt@kernel.org,
 kuba@kernel.org, openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

On 1/8/25 16:34, Rob Herring (Arm) wrote:
> On Wed, 08 Jan 2025 10:36:28 -0600, Ninad Palsule wrote:
>> Hello,
>>
>> Please review the patch set.
>>
>> V3:
>> ---
>>    - Fixed dt_binding_check warnings in ipmb-dev.yaml
>>    - Updated title and description in ipmb-dev.yaml file.
>>    - Updated i2c-protocol description in ipmb-dev.yaml file.
>>
>> V2:
>> ---
>>    Fixed CHECK_DTBS errors by
>>      - Using generic node names
>>      - Documenting phy-mode rgmii-rxid in ftgmac100.yaml
>>      - Adding binding documentation for IPMB device interface
>>
>> NINAD PALSULE (7):
>>    ARM: dts: aspeed: system1: Add IPMB device
>>    ARM: dts: aspeed: system1: Add GPIO line name
>>    ARM: dts: aspeed: system1: Add RGMII support
>>    ARM: dts: aspeed: system1: Reduce sgpio speed
>>    ARM: dts: aspeed: system1: Update LED gpio name
>>    ARM: dts: aspeed: system1: Remove VRs max8952
>>    ARM: dts: aspeed: system1: Mark GPIO line high/low
>>
>> Ninad Palsule (3):
>>    dt-bindings: net: faraday,ftgmac100: Add phys mode
>>    bindings: ipmi: Add binding for IPMB device intf
>>    ARM: dts: aspeed: system1: Disable gpio pull down
>>
>>   .../devicetree/bindings/ipmi/ipmb-dev.yaml    |  44 +++++
>>   .../bindings/net/faraday,ftgmac100.yaml       |   3 +
>>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 177 ++++++++++++------
>>   3 files changed, 165 insertions(+), 59 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
>>
>> --
>> 2.43.0
>>
>>
>>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>    pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-system1.dtb' for 20250108163640.1374680-1-ninad@linux.ibm.com:
>
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: gpio@1e780000: 'hog-0', 'hog-1', 'hog-2', 'hog-3' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#

This is a false positive. So ignoring it.

Regards,

Ninad

>
>
>
>
>
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
