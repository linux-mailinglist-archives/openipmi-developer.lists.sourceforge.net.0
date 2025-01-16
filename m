Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C231A13D47
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 16:10:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYRVY-000803-Ge;
	Thu, 16 Jan 2025 15:10:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYRVX-0007zw-F2
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:Cc:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dV2Pcid8HsWqw37L8am+YTKtRpX5ZjFhn238QfxByf0=; b=U/k6MwVn7xmDBGzk1msotl/og0
 YA83mr+35jGdvWLkBZDr48FzBzwjtDFSHTiXn3Tr+dDxbnjiuVwNg78f8ddj4csggkdwjdWkfM3pV
 jEFj1hpGWxtaKMz7aDJp6b3yKT7FJH9xmU+edtWcIIpHPWOxr3lY6teWB+feUsNLb6cA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dV2Pcid8HsWqw37L8am+YTKtRpX5ZjFhn238QfxByf0=; b=hn6/NplAHICMZ3W3T+PS/kXR3W
 1Fbij552bqIwO9qSN6hVTEeXN1rYGZ2bLFRLRSmSV2BrwKmqOpNeUIIkBtfErBbV6dmwC+XtW65SS
 OWNY5xQkqc1Z38XNZ+Al5Gkh8qI4PPKG2KH/67+BcwDxuX7dkeo9mkQ3yPmdKSRQJtiw=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYRVW-0007fy-6L for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 15:10:06 +0000
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GAdR0f022785;
 Thu, 16 Jan 2025 15:09:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pp1; bh=dV2Pcid8HsWqw37L8am+YTKtRpX5Zj
 Fhn238QfxByf0=; b=bF1bkcRCIOduygSPKnqAMX/T6/Oag1g5BH+4zZnMmaAeIR
 PH1Ft4gREadZISM3jED8wQJfyQecfdzE1JycM2Amvn5tg81MYDHhwEzk2Q2N6Yar
 lsc50GYlO7TwYK7sQiagKXufZrSWLJDP9pH1Vnyev0Z+iwfnJQuSWng4KYCb57So
 kQigG9RhvjLFyMt8A+ewde483k7/QfcPMYkfUfRbvDjR7Oh9HimdWTccrvFFBtZ5
 bZ/EtDDRwJ+TMUet5lPDsmllulR6DfKhrQf6cQmYllzLU5b11XUfZ6VsRmFs6Gpn
 lev2G1YK4DxFW3uD/jnZdAzx77sjqqV7Pu4wJBhg==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446pub3sug-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:09:24 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50GEjT58015552;
 Thu, 16 Jan 2025 15:09:23 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446pub3sub-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:09:23 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GDcFHH007519;
 Thu, 16 Jan 2025 15:09:23 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4443ynecx1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 15:09:22 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50GF9MGI17302164
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2025 15:09:22 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 00CF758054;
 Thu, 16 Jan 2025 15:09:22 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C4AB65804E;
 Thu, 16 Jan 2025 15:09:19 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 Jan 2025 15:09:19 +0000 (GMT)
Message-ID: <f60f4c2a-568b-46d7-b6cc-5a6daf496515@linux.ibm.com>
Date: Thu, 16 Jan 2025 09:09:19 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
Content-Language: en-US
In-Reply-To: <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: i4ZweR9hZ4k_EadMK1FfdqI5Qt8J3KMj
X-Proofpoint-ORIG-GUID: VN9vOfncTB44TN01PQclARGLtQf_uRKC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_06,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=696 clxscore=1015 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501160114
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Krzysztof, On 1/15/25 02:45, Krzysztof Kozlowski wrote:
 >> >> +patternProperties: >> + "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$": > Choose
 one - suffix or prefix. More popular is suffix. Ok, choosing suffix. 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
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
X-Headers-End: 1tYRVW-0007fy-6L
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
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0490807395043592964=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============0490807395043592964==
Content-Type: multipart/alternative;
 boundary="------------Pfl6iU6VOZYRBnaxcySYJfUt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Pfl6iU6VOZYRBnaxcySYJfUt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 1/15/25 02:45, Krzysztof Kozlowski wrote:
>>   
>> +patternProperties:
>> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> Choose one - suffix or prefix. More popular is suffix.

Ok, choosing suffix.

Thanks for the review.

Regards,

Ninad


--------------Pfl6iU6VOZYRBnaxcySYJfUt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi <span style="white-space: pre-wrap">Krzysztof,</span></p>
    <div class="moz-cite-prefix">On 1/15/25 02:45, Krzysztof Kozlowski
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
 
+patternProperties:
+  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Choose one - suffix or prefix. More popular is suffix.</pre>
    </blockquote>
    <p>Ok, choosing suffix.</p>
    <p>Thanks for the review.</p>
    <p>Regards,</p>
    <p>Ninad<br>
    </p>
    <br>
  </body>
</html>

--------------Pfl6iU6VOZYRBnaxcySYJfUt--



--===============0490807395043592964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0490807395043592964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0490807395043592964==--


