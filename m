Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB66A0C1F2
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 20:50:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXQRl-000886-7N;
	Mon, 13 Jan 2025 19:50:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXQRk-000880-EQ
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d2GkHx4QTVyi0OT0e9WCdAsHm7vIJF8oUFztxZt5AGc=; b=CK7BxY1AYiqUqE/SLjKee7xAmo
 aSClHmH/jzuHA6ZLGam6LegEbaMa0agfP79te4razTXO0BsihKVffHTplY7wEuNzay3/9BJFD3ylM
 xDHo9HapsXeppfICZYmhacnSBPsUrgmZGfHd8yokT+NnSu50i7XHPmQBCyFEC5DtdJMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d2GkHx4QTVyi0OT0e9WCdAsHm7vIJF8oUFztxZt5AGc=; b=akonNl8r4iV0GVzy7b3bfPXnTX
 i5/aYI8MA+IspQR53IlGYC8C6bSnvBTErnLxAoNLxwSvb1ymC8lXmdLd2RMhnIZx/UJ/DnNNkFeGj
 dFkbov4AZ1Tq4Krpaxg2QFuBPgWBS0ceWHvy6DS/0i6mmmEgWqbUVGqa+Qj5uDl1JWSI=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXQRj-0000mI-6o for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:49:59 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DE6RQH019827;
 Mon, 13 Jan 2025 19:49:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=d2GkHx
 4QTVyi0OT0e9WCdAsHm7vIJF8oUFztxZt5AGc=; b=QZAkYxeRygGqeVN9c7G6aC
 VQfBeFQJv+KDaQO5Evqaqn6I0e2OBBZ93ZR7D9tJGrT4eBkfZEus43CciAZxY+K+
 c8jTAB3BWVWfWITreEC5esAhLAAQF/ecC0k04NM4/ORRrIaArzY+KodddlSRwZ4l
 Wde9jcgksdLOfF7k+WATvcpalpCmm8fkq5z2i0o0UV8pesTWgQN2Bq66/URHNOHi
 1cmPbw58l9VA0yL1L0lqZhQykPRy8BSq6PeScZJy3qVC3WQcb2l+0A8moGCi5Oxv
 48awYrCyJZPIaLhDdTkocp5Hs0sGCebzn8cQY+/uk2hxNuUUvYLkZT+v5Qau1Vhw
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4454a59hmu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:49:14 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50DJnDAw017868;
 Mon, 13 Jan 2025 19:49:13 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4454a59hms-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:49:13 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50DGd9gK016994;
 Mon, 13 Jan 2025 19:49:12 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4444fjyrny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:49:12 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com
 [10.241.53.101])
 by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50DJnBIO29622810
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2025 19:49:12 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 165625805A;
 Mon, 13 Jan 2025 19:49:12 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6136458051;
 Mon, 13 Jan 2025 19:49:09 +0000 (GMT)
Received: from [9.61.105.40] (unknown [9.61.105.40])
 by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 Jan 2025 19:49:09 +0000 (GMT)
Message-ID: <99645919-6756-4442-ad2f-a9b353da22c8@linux.ibm.com>
Date: Mon, 13 Jan 2025 13:49:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-2-ninad@linux.ibm.com>
 <173652497637.2952052.6627595246829829775.robh@kernel.org>
Content-Language: en-US
In-Reply-To: <173652497637.2952052.6627595246829829775.robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: e2UR_H-XhwWAH3iBg0WOCRUvriLik3My
X-Proofpoint-ORIG-GUID: W526mhYllqjPLt3wkW7aqjCd7n_jLJWp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 mlxlogscore=999 spamscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130156
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rob, On 1/10/25 10:02, Rob Herring (Arm) wrote: > On Wed, 
 08 Jan 2025 10:36:29 -0600, Ninad Palsule wrote: >> Aspeed device supports
 rgmii, rgmii-id, rgmii-rxid, rgmii-txid so >> document them. >> >> Signe
 [...] Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
X-Headers-End: 1tXQRj-0000mI-6o
Subject: Re: [Openipmi-developer] [PATCH v3 01/10] dt-bindings: net: faraday,
 ftgmac100: Add phys mode
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, pabeni@redhat.com,
 minyard@acm.org, linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, davem@davemloft.net,
 andrew+netdev@lunn.ch, edumazet@google.com, ratbert@faraday-tech.com,
 kuba@kernel.org, openipmi-developer@lists.sourceforge.net, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Rob,

On 1/10/25 10:02, Rob Herring (Arm) wrote:
> On Wed, 08 Jan 2025 10:36:29 -0600, Ninad Palsule wrote:
>> Aspeed device supports rgmii, rgmii-id, rgmii-rxid, rgmii-txid so
>> document them.
>>
>> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
>> ---
>>   Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml | 3 +++
>>   1 file changed, 3 insertions(+)
>>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for the review.

Regards,

Ninad

>
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
