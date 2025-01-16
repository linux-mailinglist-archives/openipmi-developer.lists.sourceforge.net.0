Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A2A1437B
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 21:38:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYWdH-0006l6-PS;
	Thu, 16 Jan 2025 20:38:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYWdG-0006ky-LG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 20:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XOwUUj+9Al5+mspF1UWIyD+W6CPpDiMR74J1EVLvCzs=; b=GuFnpl6r+Qx0cPL+Ll5R7O7lZ6
 KwJbG38D0iR/RUIP9nFH0gjbiy7tEuwKRG7x5LMuuJM/mycDXGx/Hlb00L5gKVNCCcjaTWN9BIRNm
 BVaifk8CoqWtyxjKQzlb2ZBk2ui3PWGW6v6ca4l6gXj8GT2a5bHaNJqtejn/TzWtpPy0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XOwUUj+9Al5+mspF1UWIyD+W6CPpDiMR74J1EVLvCzs=; b=ZX7wYsgFcYpWuNzzkZYLKkGjnj
 Jpvbv/tq1BMnykC3nFfteldLuz7jL8Sx2dFU408EpHlS8OuZcHCTuxayy3v+N5hv1mX4kRHfweAh6
 4CT9hjnxTmGMSXjr1WnkUj6mLmpFgNpvhtaeNQPuVHYM7ctlX9fbWZwAln2SMLVLvRLs=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYWdC-00026R-DJ for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 20:38:22 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GEN71W004842;
 Thu, 16 Jan 2025 20:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=XOwUUj
 +9Al5+mspF1UWIyD+W6CPpDiMR74J1EVLvCzs=; b=ek/0N0/daEP783QrNb5L2O
 VajxIFEIdCTOl48UZCAc7XcL+4Mkjh6yRTvCUVJhAK+fQf/7JmQSaHq+daxaWeRS
 lTk9TnZAiuiDq4ghdSRJuBI/mP92Ovc6joOGhmZLomMvRh4Sq0fL0zyiciaC5oBd
 P2E+cl25X9GecJTjdD9+/+B1h5sGezk73se5vK9SBbSlw7roVgCcOAhjBK8HQhT0
 l5wgAX+mih2CVThNsfeV3CKWay2nQJ9EYRgjF1oSA4h/2aV6kgbLbnFdOLeFMmXT
 yqTiI9Q4rI+J99/VsHm1cwD/3iF2+TU6i/BSdy/jVPlHZvKvko6JdZ+nwiwgXnyg
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkhcqg4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 20:37:47 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50GKXJSW010145;
 Thu, 16 Jan 2025 20:37:46 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkhcqff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 20:37:46 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GHdmgL007519;
 Thu, 16 Jan 2025 20:37:45 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4443ynfmw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 20:37:45 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50GKbi2L24445642
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2025 20:37:44 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 93A3658055;
 Thu, 16 Jan 2025 20:37:44 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 72B075804E;
 Thu, 16 Jan 2025 20:37:39 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 Jan 2025 20:37:39 +0000 (GMT)
Message-ID: <c61740c8-8dd3-4d59-8553-1dea4cbd5c93@linux.ibm.com>
Date: Thu, 16 Jan 2025 14:37:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <173689907575.1972841.5521973699547085746.robh@kernel.org>
 <35572405-2dd6-48c9-9113-991196c3f507@linux.ibm.com>
 <CAL_JsqK1z4w62pGX0NgM7by+QRFcmBadw=CRVrvF2vv-zgAExg@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAL_JsqK1z4w62pGX0NgM7by+QRFcmBadw=CRVrvF2vv-zgAExg@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: pDZnXta5jIEiLEPhuvleI218uMy8Px8J
X-Proofpoint-ORIG-GUID: c5p-lEQ3kr5JODh2EUhlema0DIXGbz0H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_09,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 mlxscore=0 clxscore=1015
 bulkscore=0 lowpriorityscore=0 mlxlogscore=547 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501160151
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rob, >> I am not seeing any error even after upgrading
 dtschema. Also this mail >> also doesn't show any warning. Is this false
 negative?
 > > I believe this happens when a prior patch in the series has an [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
X-Headers-End: 1tYWdC-00026R-DJ
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Rob,


>> I am not seeing any error even after upgrading dtschema. Also this mail
>> also doesn't show any warning. Is this false negative?
> 
> I believe this happens when a prior patch in the series has an error.

Thanks for the response. I have sent a next version.

-- 
Thanks & Regards,
Ninad



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
