Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A72AA113E0
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2025 23:10:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXp7U-0002CY-LG;
	Tue, 14 Jan 2025 22:10:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXp7T-0002CS-61
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 22:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kpkg8ZRNaBCx0LdYq1kZUif9nqPGH11+aM8P8oFUIdg=; b=U2Tt9nPB337KWN0tnnDvTrCWx6
 qHSySUpEdMlrtlqD11njA8Hb6GsYI1AxNH5IIMS9VVViQyHNO9NKK7uukFWZbJR1zXpIrpDHm5XIf
 6Uz1yML/X6115J0/ChdTgD5Bo/bxmeysoJl+MCtGBDPYyfTpoPQEPHaf0dBDnlLaeRGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kpkg8ZRNaBCx0LdYq1kZUif9nqPGH11+aM8P8oFUIdg=; b=ihc15w5DvGnk1JOJEvPdNHwwQa
 A8DK4L/7k2Gft0KDcQ17qCgJIiShvkWUiKG6jolc49/zw1Kc6VMXGd31sQ07fjbV58c/2kn3hYe7N
 f4n8WqhMxpskttqsGTWskQUPYwfbHWI/+iB0LF4pukd+EjiQNboSU21mtpML8BiiA/M4=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXp7T-0001at-9c for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 22:10:43 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50EFURub005899;
 Tue, 14 Jan 2025 22:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=Kpkg8Z
 RNaBCx0LdYq1kZUif9nqPGH11+aM8P8oFUIdg=; b=JlyNEdumOpmggrw97leKDB
 O8aD3t0oXfYBT3JjdZhzcCbjPJoQ+plOjW/OGBZmZnlKnvNIEw0gjGapr8gh/IhM
 ci/fqGGAgSGkAXMJo05HriUArsKMHv0w7rLNsd+ukmZqADGolfNivZPbcJvHkwAy
 DR5ZACXVMOPYpj7lwEsFCeeomEvs+zqUOpBXFEdfMrZajc9TzkgQyJA/o1hUsIT5
 B5o5EB3Mjr7+/zY80rEExurmz9l/RDVYhoT2YGMyBjQpdF6szegyX0HVF63/y8ji
 /oJ8pnBR3VmambmAo/Co/qvIflRzqWo6xNO9BCwSW2b3LP35yA2wNJoMwyB4w/EA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445tmghp5k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:10:02 +0000 (GMT)
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50EMA2Jh032360;
 Tue, 14 Jan 2025 22:10:02 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445tmghp5d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:10:02 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50EKYumK004526;
 Tue, 14 Jan 2025 22:10:01 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 4442ysnhgd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:10:01 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com
 [10.39.53.230])
 by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50EMA0md54723054
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Jan 2025 22:10:00 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 78F1958068;
 Tue, 14 Jan 2025 22:10:00 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3EB4058054;
 Tue, 14 Jan 2025 22:09:58 +0000 (GMT)
Received: from [9.61.120.113] (unknown [9.61.120.113])
 by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 Jan 2025 22:09:57 +0000 (GMT)
Message-ID: <c8fa4a3d-9cbc-49ce-9d76-85e57453fb04@linux.ibm.com>
Date: Tue, 14 Jan 2025 16:09:57 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <173637565834.1164228.2385240280664730132.robh@kernel.org>
 <a8893ef1-251d-447c-b42f-8f1ebc9623bb@linux.ibm.com>
 <20250114000727.GA3693942-robh@kernel.org>
Content-Language: en-US
In-Reply-To: <20250114000727.GA3693942-robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: v_6PYVa29mNhrKAYYwhcM5Xcjd6o3IGx
X-Proofpoint-ORIG-GUID: wZefgua35hP2KPe6COMauRr6HOrmFlvU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_07,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 malwarescore=0 mlxlogscore=859 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501140166
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Rob, On 1/13/25 18:07, Rob Herring wrote: >>> My bot
 found new DTB warnings on the .dts files added or changed in this >>> series.
 >>> >>> Some warnings may be from an existing SoC .dtsi. Or perhaps the wa
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tXp7T-0001at-9c
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

Hello Rob,

On 1/13/25 18:07, Rob Herring wrote:
>>> My bot found new DTB warnings on the .dts files added or changed in this
>>> series.
>>>
>>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>>> are fixed by another series. Ultimately, it is up to the platform
>>> maintainer whether these warnings are acceptable or not. No need to reply
>>> unless the platform maintainer has comments.
>>>
>>> If you already ran DT checks and didn't see these error(s), then
>>> make sure dt-schema is up to date:
>>>
>>>     pip3 install dtschema --upgrade
>>>
>>>
>>> New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-system1.dtb' for 20250108163640.1374680-1-ninad@linux.ibm.com:
>>>
>>> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: gpio@1e780000: 'hog-0', 'hog-1', 'hog-2', 'hog-3' do not match any of the regexes: 'pinctrl-[0-9]+'
>>> 	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
>> This is a false positive. So ignoring it.
> No, it is not. You need to define hog nodes in aspeed,ast2400-gpio.yaml.
> See other GPIO controller bindings that do this.

ok, I fixed it. Thanks for the review.

Regards,

Ninad

>
> Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
