Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4EDA06681
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 21:43:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVctv-0000iw-Vk;
	Wed, 08 Jan 2025 20:43:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVcts-0000in-0F
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NL/s9BaV7zaTxsqmUo1LrDXYoClwJBwlRVE6OKrf/cc=; b=ESAvsZIu1nJI62VuumX8hir3Mh
 mUnmjQhDWg4qgAoqN9dYoPrAq/s7trQXYMF3uhHFAOYDfndQctP8lbnvEDYRrR35x3+UK30mnHL8f
 us4KrVJVXD9RN+zjuwOKGS2jzU/kNFpeecFvMQmc/iNZIAO5l40q3vJ2gtQLaUKEGOAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NL/s9BaV7zaTxsqmUo1LrDXYoClwJBwlRVE6OKrf/cc=; b=Mp6f020cbFtRhn/bbQahDwtPe4
 aKNwrm3rP/okIke3UnO+fbmWyioTGn1K7EdNSdg+dEcCQf6UMCqs5zhG1mlynm3kzKwBGAIs2XQXi
 D0CrTf163iS+oK7MKH0CXz576OOcNA0fvwhINBEx7qMbLwrKyH/9ve9dG5RORScFLsqo=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVctr-0006kv-Uo for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:43:36 +0000
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508DXA9J028918;
 Wed, 8 Jan 2025 20:42:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=NL/s9B
 aV7zaTxsqmUo1LrDXYoClwJBwlRVE6OKrf/cc=; b=eNflmo6SvxUT0BrJA7hQ7J
 FkF9So2pLcLA9eVZqXDTGW/9YLnkk5c1p/oKlmfcQumcxgZcyLedR2TkiJcqmWJJ
 tANBa5wyvicB9wAwflQVAcC8D2gfnNDRlZhyCXNqfk7WFaA8axghP53szr27Dez2
 Ju7yCNCEFiOSerFe6mGd/rpVhH0S3tnjlQ9Rh/x+F3y+Mdsuq+fTPxOVhHl5musO
 o7/d0Jnqys48h1B8rB0r8I4IXe+F5dQxIlVmHo5+4cHUWRgjxApEfWh3tHF/1I9g
 ch5chv8Zs+thoyxslTA98TU0q5xBQmoGtRPORle0bFsa78U257ItHPtKn4sHzRZw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441e3b504h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 20:42:41 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 508Kgf9C023841;
 Wed, 8 Jan 2025 20:42:41 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441e3b504d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 20:42:41 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 508H6MFx013698;
 Wed, 8 Jan 2025 20:42:40 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygap1mk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 20:42:40 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 508KgdEJ32244282
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Jan 2025 20:42:40 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D2A9C5805E;
 Wed,  8 Jan 2025 20:42:39 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E114C58055;
 Wed,  8 Jan 2025 20:42:36 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed,  8 Jan 2025 20:42:35 +0000 (GMT)
Message-ID: <ffcf60ec-1096-477d-a176-8e0006e19537@linux.ibm.com>
Date: Wed, 8 Jan 2025 14:42:35 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-6-ninad@linux.ibm.com>
 <1dd0165b-22ff-4354-bfcb-85027e787830@lunn.ch>
 <0aaa13de-2282-4ea3-a11b-4edefb7d6dd3@linux.ibm.com>
 <b80b9224-d428-4ad9-a30d-40e2d30be654@lunn.ch>
Content-Language: en-US
In-Reply-To: <b80b9224-d428-4ad9-a30d-40e2d30be654@lunn.ch>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: uuLbOCNnCqgmUzbDmEULaBTqgYB73fYD
X-Proofpoint-GUID: jiNFDMoRHnfifok2G5gq4nJjzYBletlg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080167
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew, On 1/8/25 14:13, Andrew Lunn wrote: > On Wed, Jan
 08, 2025 at 12:43:07PM -0600, Ninad Palsule wrote: >> Hello Andrew, >> >>
 >> On 1/8/25 11:03, Andrew Lunn wrote: >>> On Wed, Jan 08, 2025 at 10:36:33A
 [...] Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVctr-0006kv-Uo
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

Hi Andrew,

On 1/8/25 14:13, Andrew Lunn wrote:
> On Wed, Jan 08, 2025 at 12:43:07PM -0600, Ninad Palsule wrote:
>> Hello Andrew,
>>
>>
>> On 1/8/25 11:03, Andrew Lunn wrote:
>>> On Wed, Jan 08, 2025 at 10:36:33AM -0600, Ninad Palsule wrote:
>>>> system1 has 2 transceiver connected through the RGMII interfaces. Added
>>>> device tree entry to enable RGMII support.
>>>>
>>>> ASPEED AST2600 documentation recommends using 'rgmii-rxid' as a
>>>> 'phy-mode' for mac0 and mac1 to enable the RX interface delay from the
>>>> PHY chip.
>>> You appear to if ignored my comment. Please don't do that. If you have
>>> no idea about RGMII delays, please say so, so i can help you debug
>>> what is wrong.
>>>
>>> NACK
>> I think there is a misunderstanding. I did not ignore your comment. I have
>> contacted ASPEED and asked them to respond. I think Jacky from Aspeed
>> replied to your mail.
> You did not mention in the cover letter, or the patch. I asked for a
> detailed explanation in the commit message why it is correct, which
> you did not do.
Ah, ok. Sorry about that.
>
> Now we have more details, it is clear Ethernet support for this board
> needs to wait until we figure out how to fix the MAC driver. Please
> either wait with this patchset until that is done, or drop this one
> patch for the moment and submit it later once the MAC driver is fixed.

ok, Thanks!

Regards,

Ninad

>
>        Andrew
>
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
