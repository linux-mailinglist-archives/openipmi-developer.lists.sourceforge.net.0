Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF061A25E59
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Feb 2025 16:18:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1teyDK-0002km-Hy;
	Mon, 03 Feb 2025 15:18:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1teyDI-0002kc-LU
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 15:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VQ4RqG5wX63XHkwCiEdYMzRbUoNudhkrKOhuQwdpm0I=; b=dNesE9gCQUzVhNy03rwnhpPp6v
 ThcFbRFI0GMF09v56OROkpjG7MWBEAfsuqhY0a9t67B4VW3w4NHAh4BxUCN7551e8o3YfTZQc8vIM
 Hdz5qHnsFYN00fh/iGUbi6qSHpPxFMJwqLghdWUV3baowatvaOSk6FcTz1cNIktQp1do=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VQ4RqG5wX63XHkwCiEdYMzRbUoNudhkrKOhuQwdpm0I=; b=CmjL4rBOcirapz2PuXhIiyNlqL
 +WEknQF5YerJPLJ+w095SX87zlhJH0XYjtCpL7P21EBIDK+uTdvJq9/bs5J+1ZnHjCu9y7OtNvoMd
 pOGS6jmcOduSpco7S4sc02wbBwtwNjOwmp1PTkkvu/G6iKkyW7+jzhIIQwbC7poh401s=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1teyDH-0005Rv-UW for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 15:18:16 +0000
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5137X6YA014781;
 Mon, 3 Feb 2025 15:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=VQ4RqG
 5wX63XHkwCiEdYMzRbUoNudhkrKOhuQwdpm0I=; b=Nlc1VyEiuQjiYLbh9pocM7
 CLzpw0KGTWnPjmqHhoJdctttDND+tQK9HnMGI7+5OzI4UOPiC2g1jfxT+E/4BtIV
 sRXuqVCYEY+QMYpq+kzCJlXYPJJKcC/jr+wBiAnRpFY1GMFrD3kBYJg2cRwGp8VN
 3vDv5GV8RucvxRppCS/1GVFpv1u6Bscij0K+xur3Wb5seNOMbt1BYWKIU0Ts97yT
 yV9Ttyl3qwNR7zYjITItgwJC86BAgbspV7aWTEhxK+vwY8P2JFALSNld4SwgDHCL
 AU/IXMdkZIM/eZ4ifT84xINshzb+HcutkwCXvamEvqn+VMPoIEEZ7wRGln1XR9ow
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44jsgnj3w7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2025 15:17:40 +0000 (GMT)
Received: from m0360072.ppops.net (m0360072.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 513FGR11024317;
 Mon, 3 Feb 2025 15:17:40 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44jsgnj3w4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2025 15:17:40 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 513C7pcF024493;
 Mon, 3 Feb 2025 15:17:39 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44hxxmxxnf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2025 15:17:39 +0000
Received: from smtpav01.wdc07v.mail.ibm.com (smtpav01.wdc07v.mail.ibm.com
 [10.39.53.228])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 513FHcae18088686
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 3 Feb 2025 15:17:38 GMT
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5F3EC58059;
 Mon,  3 Feb 2025 15:17:38 +0000 (GMT)
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 301B95804B;
 Mon,  3 Feb 2025 15:17:37 +0000 (GMT)
Received: from [9.24.12.86] (unknown [9.24.12.86])
 by smtpav01.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon,  3 Feb 2025 15:17:37 +0000 (GMT)
Message-ID: <c06056b4-db8a-4c0b-b061-aa596d3519f8@linux.ibm.com>
Date: Mon, 3 Feb 2025 09:17:36 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, brgl@bgdev.pl,
 linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20250203144422.269948-1-ninad@linux.ibm.com>
 <20250203144422.269948-2-ninad@linux.ibm.com>
 <6def1c5d-d1a0-4a6f-9db2-453692d5423d@kernel.org>
Content-Language: en-US
In-Reply-To: <6def1c5d-d1a0-4a6f-9db2-453692d5423d@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: bmeP0_XdLDJr4zTpejIH4blsVibc7Jc7
X-Proofpoint-ORIG-GUID: LEkVc5s_HyeQNjFOjksxZRwmsKHp-Du9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=994 phishscore=0
 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502030110
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Krzysztof,
 Thanks for the review. >> Reviewed-by: Rob Herring
 (Arm) <robh@kernel.org> >> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
 > You still need to fix the subject. Why patch #1 has bindings but patch
 > #2 dt-bindings? Why [...] 
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
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
X-Headers-End: 1teyDH-0005Rv-UW
Subject: Re: [Openipmi-developer] [PATCH v7 1/9] bindings: ipmi: Add binding
 for IPMB device intf
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

Hi Krzysztof,

Thanks for the review.


>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> You still need to fix the subject. Why patch #1 has bindings but patch
> #2 dt-bindings? Why can't this be consistent?

What is preferred now a days? bindings or dt-bindings?

-- 
Thanks & Regards,
Ninad



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
