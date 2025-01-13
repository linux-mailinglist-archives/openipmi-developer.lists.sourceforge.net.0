Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A58A0B96C
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 15:27:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXLPC-0002cn-Jy;
	Mon, 13 Jan 2025 14:27:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXLPB-0002cX-CA
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 14:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Re1AWynCh34gObTCxI5E9tYgcxtbbp4c3dsc92FesJk=; b=UkL3MZcSv+OQnE1q66vmz6Fg3g
 AGYkRsQ1RNMlGZDO97gK9oh7WKdVKyo61ttd3aCajjVix6BzBlIn5TY/81AXebqUUrjo+82AL6RZF
 fhanniGdv/vDMQqt2/vdqP/jZSSM3nqW+VXij2lBOcwXbLgKpP0xVUudWGbjBAV4wXSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Re1AWynCh34gObTCxI5E9tYgcxtbbp4c3dsc92FesJk=; b=KTPA5LQLaNx4IhPeB78XsB4mAN
 4xDxuzUxPeYMlf16+7OUqTR7lhYK2Q5a2Vr2AnGUkUhYHiMo6jxLyaKyIOxfV3Ybdw4x/USKeZlkZ
 lYF3wrKMbjCmJnmQAzfafyINP5JWK+QXIIoRNzt2D6Rp4rCMUYK15YDOdqy1uiNyLa50=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXLPB-000099-5G for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 14:27:01 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DD4iCY019939;
 Mon, 13 Jan 2025 14:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=Re1AWy
 nCh34gObTCxI5E9tYgcxtbbp4c3dsc92FesJk=; b=eNsa+SIIMnv4fh5Y37zDo2
 RJwSsnglnbxwhPcVcXoxP1ovUD87h+dcCwi2aiVGKBCmuENnNghJE/b6+z3qwl7i
 xmRdOwHadN7aDygj5IYGYUhBpELtckz9sMU594Ul2/YXm4KyQVE+CkiKtwb5ucUz
 pt1vCMJvh5E8lJXkEzgCA6O5zE1tDWDbgDIcEyae+0Cf/vvav7Jc5AbVMD9IrPjc
 DTqeZN6b7SYWoihopp3ACIIFZ6O+dH306Q6FS5cEgmx97wA6eqi/E4DJzowmUuI/
 er7FJymUQfIVsaHnOGDdtq4rlQzr3R6m7Fp9UwiM5yamd0ofge26P9ZooX4cTsig
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444qvhk102-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 14:26:12 +0000 (GMT)
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50DEKZWa015977;
 Mon, 13 Jan 2025 14:26:11 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 444qvhk100-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 14:26:11 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50DCn0Qe016976;
 Mon, 13 Jan 2025 14:26:10 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4444fjxg2m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 14:26:10 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50DEQ90M46596426
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2025 14:26:10 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9A19B58064;
 Mon, 13 Jan 2025 14:26:09 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EDC8658061;
 Mon, 13 Jan 2025 14:26:08 +0000 (GMT)
Received: from [9.24.12.86] (unknown [9.24.12.86])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 Jan 2025 14:26:08 +0000 (GMT)
Message-ID: <bcebe5ed-6080-4642-b6a5-5007d97fac71@linux.ibm.com>
Date: Mon, 13 Jan 2025 08:26:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacky Chou <jacky_chou@aspeedtech.com>, Andrew Lunn <andrew@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
 <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: PzMhasNMDNoKxdyKdAi2vxo5N7CWP4lG
X-Proofpoint-ORIG-GUID: LOmVa8asSR9IfG6trFhNTjMZnecHBQjs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130118
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacky, On 1/13/25 00:22, Jacky Chou wrote: > Hi Ninad,
 > >> Thanks. When are you planning to push this change? I might need to hold
 on to >> mac changes until then. > Yes. We have a plan to push the patch
 ab [...] 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tXLPB-000099-5G
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IOWbnuimhjog?=
 =?utf-8?q?=5BPATCH_v2_05/10=5D_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGM?=
 =?utf-8?q?II_support?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Jacky,

On 1/13/25 00:22, Jacky Chou wrote:
> Hi Ninad,
>
>> Thanks. When are you planning to push this change? I might need to hold on to
>> mac changes until then.
> Yes. We have a plan to push the patch about RGMII delay configuration.
> Currently, I try to align our SDK to kernel.

Thanks. What will be the "phy-mode" value after you make these changes?

Will it be "rgmii-id" for MAC1..4?

If that is the case then I can test it with current configuration which 
may add extra delays in the RX from PHY side.

Regards,

Ninad

>
> Thanks,
> Jacky


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
