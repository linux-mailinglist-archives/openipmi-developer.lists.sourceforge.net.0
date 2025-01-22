Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C888A194D7
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 16:16:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tacT8-0008Cz-KG;
	Wed, 22 Jan 2025 15:16:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tacT7-0008Ct-9Q
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 15:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YBli4K5HL01rSUVG2c2FKHPJs1SD/csZLpUS+Sp36Jc=; b=Hc+vqHIbfW1xZdCiy3XZM2DoPy
 b1lLYToeVHYVMofHCaftUTHe36i1/J0Huxh0JIqR5G5MkuqnbGwHWNF45BBadtH3biMFSNpyFDXJl
 iU0e34rDQ2VCELd5P8bzl286tTUY3p7/TT1rLXvCMtAYJoW1PBgpujeygDsTVs1yHBbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YBli4K5HL01rSUVG2c2FKHPJs1SD/csZLpUS+Sp36Jc=; b=kIWv32jc8IuvDXh0/pYYcEnXW7
 CF5almYZ2my5jDoPHsB+L312n1uGOue7yiQD5yeNcm4kStbn8cHexPcfW7/ee7DbyUXmobIbiJCAW
 cKvseAttdSYaLFUQISRdyUQrLOYhFX1BUFMtIlMUsQ8Qgx/fBjFh1Fbl6SH2yUW6OoHk=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tacT6-0001Gs-2f for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 15:16:36 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50MDmAH1013754;
 Wed, 22 Jan 2025 15:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=YBli4K
 5HL01rSUVG2c2FKHPJs1SD/csZLpUS+Sp36Jc=; b=W46Uh5VnPtIXKwZLCOnOG5
 EIFpF1W3yTkW/sQvMnH8cU/OM/b9ywHYAKULSFSA/iVg9RnPWJnQvkwf7isXOIYQ
 yFt3gO2GknpX8UXALvWf5aTIyG5/8zLEoQ5UyY210WtS8HH+NOvhk9HQfEi7lPzp
 nnSbUDjVNTbSvsxBZR9tTh/eb/codBeBGueV8VjECosVJzfhlDWkzt0Q8Xoi050K
 bJgRe157VOmBRyYOXMmYTH8FcM1hXxj+CwlZ7SHDvvwj2FgX/KlyFygmTBfVJJ0n
 1MReGkyAjxIGlLkcctqZz1zSpueVCXvt2/vCOSwKquACyWAm09sU04c9WZsdJg8Q
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44apr9bgj0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:16:10 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50MF9CWB006263;
 Wed, 22 Jan 2025 15:16:10 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44apr9bghv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:16:10 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50MBXwPD032290;
 Wed, 22 Jan 2025 15:16:09 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 448rujrnbx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2025 15:16:09 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50MFG8Ys25952850
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2025 15:16:08 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 24AFE58059;
 Wed, 22 Jan 2025 15:16:08 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 49BD358043;
 Wed, 22 Jan 2025 15:16:06 +0000 (GMT)
Received: from [9.67.103.45] (unknown [9.67.103.45])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 22 Jan 2025 15:16:06 +0000 (GMT)
Message-ID: <3bad433e-dfa0-4d76-915c-e6a4ee85e435@linux.ibm.com>
Date: Wed, 22 Jan 2025 09:16:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
 joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
 linus.walleij@linaro.org
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-4-ninad@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <20250116203527.2102742-4-ninad@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: hEHfMaY5ETen2ABLSnxKhKFJs0sVZgRl
X-Proofpoint-ORIG-GUID: Pu3fmilgIe-kY4vHe5lYNY-b-lpQJSMY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_06,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 mlxlogscore=722 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501220111
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Rob, Conor, Krzysztof, On 1/16/25 14:35, Ninad Palsule
 wrote: > Allow parsing GPIO controller children nodes with GPIO hogs. > >
 Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> > --- Please let me know
 if you have further comments. If not, can you please send a ACK? 
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
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tacT6-0001Gs-2f
Subject: Re: [Openipmi-developer] [PATCH v6 03/10] dt-bindings: gpio:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Rob, Conor, Krzysztof,


On 1/16/25 14:35, Ninad Palsule wrote:
> Allow parsing GPIO controller children nodes with GPIO hogs.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---

Please let me know if you have further comments. If not, can you please 
send a ACK?

-- 
Thanks & Regards,
Ninad



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
