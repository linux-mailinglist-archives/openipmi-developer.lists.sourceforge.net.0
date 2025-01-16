Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A36FA13D50
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 16:11:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYRWW-0005f7-3l;
	Thu, 16 Jan 2025 15:11:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYRWT-0005ef-Lh
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9kMsm7jJrAx1IN2gYEC8j2oi13whyI4ysY2MoDYfRaw=; b=i44ogVPf5kFHRdDcwYbFU0kcaJ
 YFc26CFI6X0NFjv3pdDc9KOeL50KFEbkWBRZCeeLYFYHZ2sdSB0sS0PfD3oIpBa0mkLHjlXHmk1Rt
 JPhaNKWM1cu/S57Hy8QiMjiQT7oEbaF7Hf5ievB3Duc4jcCveW5m0vzFysXBR+0/rjYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9kMsm7jJrAx1IN2gYEC8j2oi13whyI4ysY2MoDYfRaw=; b=lenAKi+l2bY2v3XSWsutfvmKIB
 YxNTojwFruFax5dCI9kx+7o9gP1suAIAG+01f+miCpkmIt6eM9tMrSz7twhu4rSf6vuTx3UnPBnle
 JEVWpMpyCSK5E3jDmQL6tpifV/g03cJTmC+OibaO7PkmJbtwdCLoFFauWTlIlnZJ1ThI=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYRWI-0007ut-ER for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:10:55 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GDcZFT005641;
 Thu, 16 Jan 2025 15:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=9kMsm7
 jJrAx1IN2gYEC8j2oi13whyI4ysY2MoDYfRaw=; b=n0efISJtYoPTmwZACD9/JJ
 XR81H59ZXaOeB7D2dq086jXjSvKCxh9hP/TFVOnwxlEbQsW7CHOpMvtOzcVHauv7
 jFhouCJKKMDGucfkTuOeZERwV3IKAqvdy/Rraw8JYwg02apXtvsLP655zsCxLkAX
 22ee1523s/7IDZrB7UOOsR0D8vMV0bdCd80YBqnsQIbCrbHK/4WUt8V72eLmGTya
 v05WwLOmklixfCXLaRWxPwFjR1BqvGyefx8zVF8CmPFuGLmmUXfRW0dcsrEly1hW
 j4HphjMFuzUAWs3oXxVE3rEMJH+m717ZPb1PqnBazJrZXf0gV9o1MPogpQlT89tw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkck4b4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:10:16 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50GExBFG017832;
 Thu, 16 Jan 2025 15:10:15 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkck4av-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:10:15 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GDCw1w007994;
 Thu, 16 Jan 2025 15:10:14 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4443yned0n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:10:14 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50GFADIJ21299764
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2025 15:10:14 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E665B58054;
 Thu, 16 Jan 2025 15:10:13 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A1A815803F;
 Thu, 16 Jan 2025 15:10:11 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 Jan 2025 15:10:11 +0000 (GMT)
Message-ID: <8a9724b0-440f-4647-9505-058717f7ee07@linux.ibm.com>
Date: Thu, 16 Jan 2025 09:10:10 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
 <20250115142457.GA3859772-robh@kernel.org>
Content-Language: en-US
In-Reply-To: <20250115142457.GA3859772-robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: TC-QwuyWLELS3rwujChq29wvqC7RmVnh
X-Proofpoint-GUID: vg3ZPGERppcMA5dqf5ZuhwOkDOxlsLVG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_06,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 mlxlogscore=717 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501160114
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rob, On 1/15/25 08:24, Rob Herring wrote: > > I was about
 to say that, but this matches what gpio-hog.yaml defines. > Why we did both,
 I don't remember. We could probably eliminate > 'hog-[0-9]+' as that d [...]
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tYRWI-0007ut-ER
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Rob,

On 1/15/25 08:24, Rob Herring wrote:
>
> I was about to say that, but this matches what gpio-hog.yaml defines.
> Why we did both, I don't remember. We could probably eliminate
> 'hog-[0-9]+' as that doesn't appear to be used much.
>
> Long term, I want to make all gpio controllers reference a gpio
> controller schema and put the hog stuff there. Then we have the node
> names defined in 1 place.

Ok, choosing suffix.

Thanks for the review.

Regards,

Ninad




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
