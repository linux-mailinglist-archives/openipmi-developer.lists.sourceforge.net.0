Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F1EA1091F
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2025 15:22:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXhnw-0003OU-Qa;
	Tue, 14 Jan 2025 14:22:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXhnv-0003OJ-MF
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 14:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Obdh2sp1bG/iJrIhaC8nIXFsNSDoTZS3Zoul3eqaA60=; b=c6aDgaXuA/l9KQZkf4p/bXcnMD
 ZDaundgW7Mjn4oBUYNCyt1RNlC5tVa2WGHoo3IuRWkfHCjc8x2/gmLcdvRKOqzwxEKjv5kj7J1sQp
 w99A2WedacIX/2s0NcDtyKooLXEVjkIQVKGf0qGcX6J52OR7xdLNOopGlN0SD0+cdkPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Obdh2sp1bG/iJrIhaC8nIXFsNSDoTZS3Zoul3eqaA60=; b=S54Wxb1aR4Bxp66pRpumlAT5HB
 pluGHnloq8OHaFlGNUWUR0qHFOOROG/XCeNDZgBzcZhF/u37BOhhnDqE0jgq2zFJeFig+Pz30d/q1
 irSpEvt82p5yg3HVgyY8CuX5zuz1VSgd1pxpYjvqKDd3y6PczhUBUB3CoT1gn3KfIqsE=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXhnu-0007ml-MN for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 14:22:03 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50E3sZbc007080;
 Tue, 14 Jan 2025 14:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=Obdh2s
 p1bG/iJrIhaC8nIXFsNSDoTZS3Zoul3eqaA60=; b=L8ixA7V1onUz11Os0Pudtf
 VEurMailch8RHVvI8JKcx6l8Yc+62G9u9lt4sWdm5mO5jxcidLwEFj/E75biFI+f
 QYk5sPeAIfSje3y/P0Zh8LP0nsds4PUDOVLeGHZIaPDUoWMUp4qAwVMmb8y7TgO/
 kjIY1UE5bnw2c+sLvUzlyfAp/7SMEzALIzy9oC+CfoWX8aGwcvsqT3XhnCAovI0V
 aa/PvbL058LrPCep6fnzpNhfDO6/0htFJZ9NAjNdm1gjELv+CPJSH0d5cmzP7QKT
 Q98Nby1GOLVM6Fx59FEn/S48d8+qiUz0Y4CpJDNijXgnxD7ojiAOpgRtl5ElhuEA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445gdjj8jb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 14:21:12 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50EEK8aA011287;
 Tue, 14 Jan 2025 14:21:11 GMT
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445gdjj8j9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 14:21:11 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50EBAWjW016485;
 Tue, 14 Jan 2025 14:21:10 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 4445p1k65k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 14:21:10 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50EEL9nj25166578
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Jan 2025 14:21:09 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 982CA5805D;
 Tue, 14 Jan 2025 14:21:09 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1945B58043;
 Tue, 14 Jan 2025 14:21:09 +0000 (GMT)
Received: from [9.24.12.86] (unknown [9.24.12.86])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 Jan 2025 14:21:09 +0000 (GMT)
Message-ID: <9404bb02-0dc9-4d44-a07f-4a81faaa63d6@linux.ibm.com>
Date: Tue, 14 Jan 2025 08:21:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: corey@minyard.net, Rob Herring <robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-3-ninad@linux.ibm.com>
 <20250110160713.GA2952341-robh@kernel.org>
 <Z4Fejhd_qPfuVLiw@mail.minyard.net>
Content-Language: en-US
In-Reply-To: <Z4Fejhd_qPfuVLiw@mail.minyard.net>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: QqwJVM9EO3zAIwPZ75Cabrp2tcIwXDQZ
X-Proofpoint-ORIG-GUID: ILtSGlFoh6SB1BgZa686W1TSIkYX-mNx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 spamscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501140112
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Cprey, On 1/10/25 11:53, Corey Minyard wrote: > On Fri,
 Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote: >> On Wed, Jan 08, 2025
 at 10:36:30AM -0600, Ninad Palsule wrote: >>> Add device tree binding docu
 [...] Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXhnu-0007ml-MN
Subject: Re: [Openipmi-developer] [PATCH v3 02/10] bindings: ipmi: Add
 binding for IPMB device intf
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 linux-aspeed@lists.ozlabs.org, kuba@kernel.org, krzk+dt@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Cprey,

On 1/10/25 11:53, Corey Minyard wrote:
> On Fri, Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote:
>> On Wed, Jan 08, 2025 at 10:36:30AM -0600, Ninad Palsule wrote:
>>> Add device tree binding document for the IPMB device interface.
>>> This device is already in use in both driver and .dts files.
>>>
>>> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
>>> ---
>>>   .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 44 +++++++++++++++++++
>>>   1 file changed, 44 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
>>> new file mode 100644
>>> index 000000000000..a8f46f1b883e
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
>>> @@ -0,0 +1,44 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: IPMB Device
>>> +
>>> +description: IPMB Device interface to receive request and send response
> First, thank you, this does need to be documented.
>
>> IPMB is not defined anywhere.
> Indeed.  At least reference the spec, but better do that and provide a
> basic description.
>
>> Which side of the interface does this apply to? How do I know if I have
>> an ipmb-dev?
>>
>> This document needs to stand on its own. Bindings exist in a standalone
>> tree without kernel drivers or docs.
> At least to someone who knows what IPMB is, it's pretty clear that you
> are saying "The i2c device this node is in is on an IPMB bus." However,
> to someone who is not, this is all a foreign language.  This definitely
> needs better documentation.
>
> Why do you have a "reg" property?  I don't see it referenced in the
> driver.  I assume that's the I2C address, but that's going to be the
> same as what's in the containing I2C node.  I don't think it's
> necessary.

Sorry forgot to answer this question. We are setting extra values for 
reg for I2C slave.

I am not sure how it is used in the driver.

Regards,

Ninad

>
> -corey
>
>>> +
>>> +maintainers:
>>> +  - Ninad Palsule <ninad@linux.ibm.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - ipmb-dev
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  i2c-protocol:
>>> +    description:
>>> +      Use I2C block transfer instead of SMBUS block transfer.
>>> +    type: boolean
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        ipmb-dev@10 {
>>> +            compatible = "ipmb-dev";
>>> +            reg = <0x10>;
>>> +            i2c-protocol;
>>> +        };
>>> +    };
>>> -- 
>>> 2.43.0
>>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
