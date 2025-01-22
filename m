Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB0FA194C1
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 16:11:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tacNg-0006k4-M2;
	Wed, 22 Jan 2025 15:11:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tacNe-0006jn-Ey
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 15:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iP6JYLAn3kSqxDMH1x2eypCfziCgLVwxubhfad9Yzqg=; b=EEn38EV9aHhE74F6BLvOcubMjI
 n1mfpHpJ/DMyu/Ed8SB1b4hbKukf1DmrP842PjTBdr1uci1JAAM8sPskSJukCQAgJJCXxu/WJ2hAC
 8J0x0PMMZbsJ7YnVd8RbggxPR7sM16NG2L07lu9UDAr7twgzVtnNsp8gw5+D/cdRtl8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iP6JYLAn3kSqxDMH1x2eypCfziCgLVwxubhfad9Yzqg=; b=kw7J5RiuxSGRKwALfNhts9+GcK
 78WXbsFqoeanL2xmGyKGX5i3rsYhDqxrW6GeKfGTB/iSEETKeXia2mDdIR84uQy7lQ0py37qKroPU
 WSgsVDg/ZggvujGw+iHX3hZ9bJvPufSuNKgXrHgwL7q7whokJmw5Z1+cjRvls42tW2tE=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tacNd-0000vw-O6 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 15:10:58 +0000
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50M7XBIe013509;
 Wed, 22 Jan 2025 15:10:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=iP6JYL
 An3kSqxDMH1x2eypCfziCgLVwxubhfad9Yzqg=; b=oe++BO6+6YaXyzZAzm2Vfe
 asicoVzK9bzTB/35VuO19PVEov7mApKRfkrMPWfXeOYra4CfAHA1mr1lktJZf+Zv
 7Ag47fEY1i4UAi0CIPAeRwcVKNEIxnyKJu8N3fCxyPbnRLrntjgJpBs/IceK1iFY
 DJ7Fcy/106hdA/XY9MUWQ+C6qe99C20B91IyKrbYXZSwRt6YAUE85U9C+ggslZsg
 oOtEDkspkp2eVrgL7hks82sba8qZ1mgGWNzvkte47E8yHqCo3YaHrCt130KCF9n7
 nkQmY5mPCFK++maitW6BhKlvOsH9XirJYldKMx8KATkRgth6qWytCDqGgNEdpqfA
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2183-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:10:28 +0000 (GMT)
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MF5I64021452;
 Wed, 22 Jan 2025 15:10:28 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44avcp2180-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:10:28 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MEWxV4029604;
 Wed, 22 Jan 2025 15:10:27 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 448qmngxum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:10:27 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MFAQnW30474798
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 15:10:26 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BBCE258043;
 Wed, 22 Jan 2025 15:10:26 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 21C2658055;
 Wed, 22 Jan 2025 15:10:25 +0000 (GMT)
Received: from [9.67.103.45] (unknown [9.67.103.45])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 15:10:25 +0000 (GMT)
Message-ID: <79c859c6-ff59-4641-8ae7-4136d7c3724e@linux.ibm.com>
Date: Wed, 22 Jan 2025 09:10:24 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
 joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-3-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-3-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 6-n8PCpmb03FndjCSeNg3mA0W6V6JDMb
X-Proofpoint-GUID: vA3A8Mv6S_n51l7CjcDZtEnBqfbDtcHD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_06,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0
 bulkscore=0 mlxlogscore=838 spamscore=0 phishscore=0 mlxscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220111
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Corey, Rob & Krzysztof On 1/16/25 14:35, Ninad Palsule
 wrote: > Add device tree binding document for the IPMB device interface.
 > This device is already in use in both driver and .dts files. > >
 Signed-off-by: Ninad Palsule [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
X-Headers-End: 1tacNd-0000vw-O6
Subject: Re: [Openipmi-developer] [PATCH v6 02/10] bindings: ipmi: Add
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Corey, Rob & Krzysztof

On 1/16/25 14:35, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface.
> This device is already in use in both driver and .dts files.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>

Do you have further comments on this? If not can you please send the ACK?

-- 
Thanks & Regards,
Ninad



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
