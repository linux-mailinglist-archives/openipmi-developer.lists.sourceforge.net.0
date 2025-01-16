Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D304A13D32
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 16:05:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYRQq-0000Ld-FT;
	Thu, 16 Jan 2025 15:05:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYRQp-0000LX-CG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YqyfQxOJ5oYKECoyFJ2sTY8rhlGKLhZCB19orskKgkE=; b=XX0FhWT51nveyS8rMC37lzrJAY
 it1SkrUsq8ux24xNupXwHDmdLI6p4dPXhdrbYJdhgo+F06+JR6aRL0EPQUrq/3YbIoaF6vrAc5V/y
 dS8XVQVVTk670pmjJ9uBAS5ul02Gg+XBg080lKHcDnuR5zCG+Tkmhqe0yJcH+sSQR4l4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YqyfQxOJ5oYKECoyFJ2sTY8rhlGKLhZCB19orskKgkE=; b=Rk4gFg2IdTHJXfWk79e1ttUy5h
 f1AyL5/feY/xSUX9+/+7B03eUKIlG11omkOLQn1RUo65ks4+HyiUeA+AliKnkeCu/2fW8sd9zYRkB
 1yb2syUIVyYVo9tl7D0+3AOW1Hdk3h+VZD2/YwWp+DhruU0Vcmg7M2jhk9tpT08G9Hoo=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYRQp-0006Fb-Cr for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:05:16 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GE6dxf024817;
 Thu, 16 Jan 2025 15:04:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=YqyfQx
 OJ5oYKECoyFJ2sTY8rhlGKLhZCB19orskKgkE=; b=UxP66y8y9OT9RWoBkaJAU3
 GfkhR0rxzN94Sk3KjZdvONvMmx4MlGUauBsmpyNtxtfo9KsmiQ/vlL4sTwTu0PUp
 vSgHgFEUTdaYxWr5udXMn5OuCFAKUgZmhgqqdZXmhSbRgbyIL/niU4TL3c2jdvNf
 JKm9g5qc1RNZhAlhCgqZZfTUt1wUqEkOtTjEW+RtI7hw42FNfOhojmhcvNdT9Ghf
 NRClsrSRmKedtjTt3g/a7plBN2KUb96ivAzsTUh9yeLcs/N7aqaQhcLDZSgCdMpN
 OCTYiaxdVGb8OFOq3q1Ybs0ULTgnYv9RIYl1MuLXe/id0QVac65LfSSLwk/XfFgg
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4473k58ar8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:04:31 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50GERMrc012914;
 Thu, 16 Jan 2025 15:04:31 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4473k58ar1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:04:31 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GE6SP6017400;
 Thu, 16 Jan 2025 15:04:30 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4444fke98p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:04:30 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50GF4URL28246688
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2025 15:04:30 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EA8CC5803F;
 Thu, 16 Jan 2025 15:04:29 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5565C58056;
 Thu, 16 Jan 2025 15:04:23 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 Jan 2025 15:04:22 +0000 (GMT)
Message-ID: <35572405-2dd6-48c9-9113-991196c3f507@linux.ibm.com>
Date: Thu, 16 Jan 2025 09:04:21 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <173689907575.1972841.5521973699547085746.robh@kernel.org>
Content-Language: en-US
In-Reply-To: <173689907575.1972841.5521973699547085746.robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: owqPtG7sXawqZszVtmUCKpylao6OtTOR
X-Proofpoint-ORIG-GUID: y3OZyjeOsP0uNqLC9wmfkr7B2_zgRWNG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_06,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxlogscore=666 impostorscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160114
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rob, On 1/14/25 17:57, Rob Herring (Arm) wrote: > On Tue, 
 14 Jan 2025 16:01:37 -0600,
 Ninad Palsule wrote: >> Allow parsing GPIO controller
 children nodes with GPIO hogs. >> >> Signed-off-by: Ninad Palsule [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
X-Headers-End: 1tYRQp-0006Fb-Cr
Subject: Re: [Openipmi-developer] [PATCH v5 03/10] dt-bindings: gpio:
 ast2400-gpio: Add hogs parsing
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, minyard@acm.org,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgUm9iLAoKT24gMS8xNC8yNSAxNzo1NywgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6Cj4gT24g
VHVlLCAxNCBKYW4gMjAyNSAxNjowMTozNyAtMDYwMCwgTmluYWQgUGFsc3VsZSB3cm90ZToKPj4g
QWxsb3cgcGFyc2luZyBHUElPIGNvbnRyb2xsZXIgY2hpbGRyZW4gbm9kZXMgd2l0aCBHUElPIGhv
Z3MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE5pbmFkIFBhbHN1bGUgPG5pbmFkQGxpbnV4LmlibS5j
b20+Cj4+IC0tLQo+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYXNwZWVkLGFzdDI0
MDAtZ3Bpby55YW1sICAgICAgIHwgNiArKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4+Cj4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRp
bmdfY2hlY2snIG9uIHlvdXIgcGF0Y2g6Cj4KPiB5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6Cj4K
PiBkdHNjaGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOgo+Cj4KPiBkb2MgcmVmZXJlbmNlIGVycm9y
cyAobWFrZSByZWZjaGVja2RvY3MpOgoKSSBhbSBub3Qgc2VlaW5nIGFueSBlcnJvciBldmVuIGFm
dGVyIHVwZ3JhZGluZyBkdHNjaGVtYS4gQWxzbyB0aGlzIG1haWwgCmFsc28gZG9lc24ndCBzaG93
IGFueSB3YXJuaW5nLiBJcyB0aGlzIGZhbHNlIG5lZ2F0aXZlPwoKIMKgIEhPU1RMRMKgIHNjcmlw
dHMvZHRjL2ZkdG92ZXJsYXkKIMKgIENIS0RUwqDCoCAuL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncwogwqAgTElOVMKgwqDCoCAuL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncwogwqAgRFRFWCAKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYXNw
ZWVkLGFzdDI0MDAtZ3Bpby5leGFtcGxlLmR0cwogwqAgRFRDIFtDXSAKRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYXNwZWVkLGFzdDI0MDAtZ3Bpby5leGFtcGxlLmR0YgoK
UmVnYXJkcywKCk5pbmFkCgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
