Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A097A064CD
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 19:43:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVb23-0003X4-Ce;
	Wed, 08 Jan 2025 18:43:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVb21-0003Ww-LB
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 18:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mYtRemCp80tLFlE+/xAsWRxtiFamG3QA+/dcEw2lLas=; b=bqoTFmKy8WRkkw70+t/yZe/HvS
 KjWOlDA0V4iKZg1RBNc1d+GmiBiUSeJrUAxVQJoGtwevMg2ORSPXstIyFj6H5IPFVvRF4sqeVYv+5
 amAyOho7dZ5gEQnyb12W+2nnwnModdWGEhG+COAXZkmOtnFFKvZLclf7bVuyQ56DwtbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mYtRemCp80tLFlE+/xAsWRxtiFamG3QA+/dcEw2lLas=; b=Cv8BDb8vaJ8Jjxx9hDW+bWA6CY
 YZg5Hq0hVBu6qZXUcYIgV4TfCiY5hAbhZtv1TBwF2/O+tCan9UDwTiLeXDUpxMopXXCzm3/2Qj4ny
 b0ZFQySYuiLWUeov09f2VLeFCaRQBMf5vPrmpwQzkJ4Olwi8fprI0UcY/BGWPzYuoT+M=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVb20-0007tj-Di for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 18:43:53 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508DwcDD007005;
 Wed, 8 Jan 2025 18:43:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=mYtRem
 Cp80tLFlE+/xAsWRxtiFamG3QA+/dcEw2lLas=; b=lJGbincP7UF9Damkc90vh7
 nG7kVYJV9A8x4FyuUy5lR5COyY8j+GNPMIzHMFlxqdO3R+FtAKr/xY/tsdbWWr/6
 5HXNuRjZ+C3Aup3MOyf+3yzaCKXyxd/Zp6G3kRNCcaNG34wmIfM18nvhhcCQnRHK
 KiZtvxuMtvYQxHBfBal4rwSsV9u4DUcKLCREtroAVKSHt0PCQcPv+NYjGXZkzu+V
 CtHSo+G0Ec9zn/jzC95lizV67beMMqx+/+hJebp4YIb0i4Z140vBGngJa8gb5a+c
 TANLK5MJKnsqTmJklJj53dC/qzxxAv/RxiW5T3XzoMIr/f4XptbFbGh6OujRSf6g
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441hupuxv6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 18:43:12 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 508IhBCm023005;
 Wed, 8 Jan 2025 18:43:11 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441hupuxv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 18:43:11 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 508H6MkV013698;
 Wed, 8 Jan 2025 18:43:10 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygap1667-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 18:43:10 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 508Ih9mx5374478
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Jan 2025 18:43:09 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CBB5A58055;
 Wed,  8 Jan 2025 18:43:09 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F2B175805E;
 Wed,  8 Jan 2025 18:43:07 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed,  8 Jan 2025 18:43:07 +0000 (GMT)
Message-ID: <0aaa13de-2282-4ea3-a11b-4edefb7d6dd3@linux.ibm.com>
Date: Wed, 8 Jan 2025 12:43:07 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-6-ninad@linux.ibm.com>
 <1dd0165b-22ff-4354-bfcb-85027e787830@lunn.ch>
Content-Language: en-US
In-Reply-To: <1dd0165b-22ff-4354-bfcb-85027e787830@lunn.ch>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: jSCdY-RcrAV3Tg1-H2uMXbGEzQHXqos9
X-Proofpoint-GUID: 3HvDLVy_vybxQ6gOrGDeaIu4ilBJS-Hv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0
 clxscore=1011 mlxscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0 mlxlogscore=899
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080152
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andrew, On 1/8/25 11:03, Andrew Lunn wrote: > On Wed, 
 Jan 08, 2025 at 10:36:33AM -0600,
 Ninad Palsule wrote: >> system1 has 2 transceiver
 connected through the RGMII interfaces. Added >> device tree entry to [...]
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tVb20-0007tj-Di
Subject: Re: [Openipmi-developer] [PATCH v3 05/10] ARM: dts: aspeed:
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
Cc: robh@kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, linux-aspeed@lists.ozlabs.org, kuba@kernel.org,
 krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Andrew,


On 1/8/25 11:03, Andrew Lunn wrote:
> On Wed, Jan 08, 2025 at 10:36:33AM -0600, Ninad Palsule wrote:
>> system1 has 2 transceiver connected through the RGMII interfaces. Added
>> device tree entry to enable RGMII support.
>>
>> ASPEED AST2600 documentation recommends using 'rgmii-rxid' as a
>> 'phy-mode' for mac0 and mac1 to enable the RX interface delay from the
>> PHY chip.
> You appear to if ignored my comment. Please don't do that. If you have
> no idea about RGMII delays, please say so, so i can help you debug
> what is wrong.
>
> NACK

I think there is a misunderstanding. I did not ignore your comment. I 
have contacted ASPEED and asked them to respond. I think Jacky from 
Aspeed replied to your mail.


Regards,

Ninad

>
> 	Andrew
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
