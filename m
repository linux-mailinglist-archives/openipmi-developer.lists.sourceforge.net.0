Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A877EA0C204
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 20:51:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXQT6-0005DQ-18;
	Mon, 13 Jan 2025 19:51:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXQT4-0005DK-VT
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=raLVazOTH2YUlyxL7EXDEtYhqzQORGC8oK0/B3jL/r0=; b=iwNkP3hBwuCl7nvobnQ8+RaO5l
 tt0Bw/JJa3rNJo5UwZyjbfLXMu95CIUCf+FvENR97n7cl5KwFqdYmjWvbhPsG0Pzght0TG2IrSUw7
 E2cPCNXrkLjacgzv9cCIseKv8hGEOLdb4a5BZDqvvqsbax3O5WD15g7v6YXmNbpPQYcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=raLVazOTH2YUlyxL7EXDEtYhqzQORGC8oK0/B3jL/r0=; b=AAhBUOI7/gax8fte2rOTdSRtV9
 38elJEMc4tVONspWIvyskKz3ueAZRqdSD/9aT8Zl0e6jqe6kUQAWHkTxqIVCAnUoyMMhWVQpvvf0X
 LwUl5CnxC9FTyrhqrPR3fTFh53XKcRTspe+uBZIReJs/S3Q5gVCkNt/GIseaqLKwKf0Y=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXQT4-0000q2-9F for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:51:22 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DF7OBK003096;
 Mon, 13 Jan 2025 19:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=raLVaz
 OTH2YUlyxL7EXDEtYhqzQORGC8oK0/B3jL/r0=; b=QK08VsclLq2CSJ3yGljUqE
 nt2Zcd+bdQ1P/e/1DtTX2M4O3njriADKQRinqVp5zKwKhDyFb/dIqxBotxDTV1IM
 XWCmmfncK6SpUEelMr7zNQiPyB6JcmvJJdaV+ROwlfgzMPaj4QqSYbMjeJE5faHI
 YqrIu4g3j5lc3VTR66iUnKI7w1OR2Pxkjk2Cy27O1MdWCpRzLPbJuuQ7PXim0o9c
 RE52WlwrqdOlc88d++PiZLvI0nNGO3P6fHQBcDOVdk6cju0lP0kVNLojCFBTQfm1
 9ujyM4IAAL/Jfz8MBP9RowtQ+1fy+A29VwlzN+sdCCNX+aN/dgxTcJ964aCiI6Kg
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444uaguw0s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:50:44 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50DJgqZt020111;
 Mon, 13 Jan 2025 19:50:44 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444uaguw0q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:50:43 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50DGU2DS007385;
 Mon, 13 Jan 2025 19:50:42 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4443ymyu32-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:50:42 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com
 [10.241.53.101])
 by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50DJofVP32244322
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2025 19:50:41 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D51735805C;
 Mon, 13 Jan 2025 19:50:41 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 07FBB5805A;
 Mon, 13 Jan 2025 19:50:39 +0000 (GMT)
Received: from [9.61.105.40] (unknown [9.61.105.40])
 by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 Jan 2025 19:50:38 +0000 (GMT)
Message-ID: <38f9a51d-0116-4ec4-b515-26038f91659b@linux.ibm.com>
Date: Mon, 13 Jan 2025 13:50:38 -0600
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
X-Proofpoint-ORIG-GUID: -e7S3whLGUPEjVKglQj4-uLg1hX1hsz0
X-Proofpoint-GUID: UTKY78W8byq0kSk5ICb8m0CyqtOykedE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1011
 impostorscore=0 bulkscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130156
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On 1/10/25 11:53, Corey Minyard wrote: > On Fri,
 Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote: >> On Wed, Jan 08, 2025
 at 10:36:30AM -0600, Ninad Palsule wrote: >>> Add device tree binding docu
 [...] Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXQT4-0000q2-9F
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

Hi Corey,

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
Thanks for the review.
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
>
> -corey

I have improved the documentation in version 4. Please check.

Regards,

Ninad




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
