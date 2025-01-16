Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D59EEA13BFF
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 15:20:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYQjD-0005ii-Sp;
	Thu, 16 Jan 2025 14:20:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYQjC-0005ic-BE
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 14:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:Cc:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kvuoie2cHvRzOctKC4/04/khecJ1IORzLwb4vivzsfA=; b=G2rpmwGbd/9D7aM6MN4sQIfMBx
 22nG+h2HxQfr9BBQHpSk3PCxAGikusyJMyM2i+IXYEfNuRy93ot524EHb63qviw5ubFLkp7L//S23
 cq12EnbUoRRS3afPZamGrS7cmt1edKEezRYvPLzXxk0JEUH6quwAdnAn963RZjNsKpXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kvuoie2cHvRzOctKC4/04/khecJ1IORzLwb4vivzsfA=; b=RbBLETSOFj4uXLGNb6VEeCSYLv
 fkx+Cebp6nxLpkNnpvfXZhdshlypkxTIE22CuPxoRG2J8+M0x385D8SuauvPMjO0No8F727SOyb2Q
 tJpVw7WU7d8d6tm5Qo13lqBscaMsN3JF7DxzJJYSIMj2m0jpb84Vig9tHiCFRmQiumGg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYQjC-0002Cj-At for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 14:20:11 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GDMYWJ004831;
 Thu, 16 Jan 2025 14:19:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pp1; bh=kvuoie2cHvRzOctKC4/04/khecJ1IO
 RzLwb4vivzsfA=; b=Ic/Y8giYDGPdQ/mpE5C+CPFzlXRMHphqJoD40Mh0Rzk0Yn
 ygvMjY3Z10JUbo+GMZ6CZuWeIMlyua2bM/Zm8x3/i34cFDo4TPFeLT6MmRgXMnA9
 AuPN7x30jHtbJSgqENy+s8PIv8L0j48EKG8g/a9r+wEUoYkUbtZNXzVfmOcRDDAd
 QyyIT/1rfcqwGaT4iQd6wcf3jXmcQhRiCziixvkdWI7Rl9rHZtMPN1hn9JKrRqn8
 RioPYZ3mY2+AqEr8HxPMdpYf8uLUriBw8yjTlhInnthZOGUQ7hJ9PhXcpYPBB1e6
 25SexvA5Lr0DlO3WYk2U5iHcwt5KvsWrhXMkxs3Q==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkhatus-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 14:19:32 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50GE8L4r015341;
 Thu, 16 Jan 2025 14:19:32 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446tkhatuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 14:19:31 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GE2pte016994;
 Thu, 16 Jan 2025 14:19:30 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4444fke3bh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2025 14:19:30 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50GEJUGM27132612
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2025 14:19:30 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 49C0158056;
 Thu, 16 Jan 2025 14:19:30 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0C98D58055;
 Thu, 16 Jan 2025 14:19:26 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 16 Jan 2025 14:19:25 +0000 (GMT)
Message-ID: <10c06fec-b721-4a7f-b105-c3c4c8358a47@linux.ibm.com>
Date: Thu, 16 Jan 2025 08:19:25 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
 <20250115142457.GA3859772-robh@kernel.org>
 <a164ab0e-1cdf-427e-bfb7-f5614be5b0fa@linux.ibm.com>
 <oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb>
Content-Language: en-US
In-Reply-To: <oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: iRHdmQjKkSr7h4OshupNvXQ6gsirl5r9
X-Proofpoint-ORIG-GUID: FpwEucBS_i92wmwtCKu3Xm7a2H2vxfyr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_06,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 mlxscore=0 clxscore=1015
 bulkscore=0 lowpriorityscore=0 mlxlogscore=621 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501160106
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Krzysztof, On 1/16/25 04:38, Krzysztof Kozlowski wrote:
 > On Wed, Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote: >>>>> +
 "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$": >>>> Choose one - suffix or prefix. More
 popula [...] 
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
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tYQjC-0002Cj-At
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
Cc: Rob Herring <robh@kernel.org>, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5817303601524415873=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============5817303601524415873==
Content-Type: multipart/alternative;
 boundary="------------5PD0oWgh2UwHJR8M6w04d9SI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5PD0oWgh2UwHJR8M6w04d9SI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 1/16/25 04:38, Krzysztof Kozlowski wrote:
> On Wed, Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote:
>>>>> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
>>>> Choose one - suffix or prefix. More popular is suffix.
>>> I was about to say that, but this matches what gpio-hog.yaml defines.
>>> Why we did both, I don't remember. We could probably eliminate
>>> 'hog-[0-9]+' as that doesn't appear to be used much.
>>>
>>> Long term, I want to make all gpio controllers reference a gpio
>>> controller schema and put the hog stuff there. Then we have the node
>>> names defined in 1 place.
>> Which one of the following are you suggesting?
>>
>> "^(.+-hog(-[0-9]+)?)$"
> This. The second part of pattern.
>
> I'll send a patch for dtschema to drop the prefix version.

Thanks. Also thanks for the other patch. It helped a lot.

Regards,

Ninad

>
> Best regards,
> Krzysztof
>
>
--------------5PD0oWgh2UwHJR8M6w04d9SI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi  <span style="white-space: pre-wrap">Krzysztof,</span></p>
    <div class="moz-cite-prefix">On 1/16/25 04:38, Krzysztof Kozlowski
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb">
      <pre wrap="" class="moz-quote-pre">On Wed, Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote:
</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <blockquote type="cite">
            <blockquote type="cite">
              <pre wrap="" class="moz-quote-pre">+  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
</pre>
            </blockquote>
            <pre wrap="" class="moz-quote-pre">Choose one - suffix or prefix. More popular is suffix.
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">I was about to say that, but this matches what gpio-hog.yaml defines.
Why we did both, I don't remember. We could probably eliminate
'hog-[0-9]+' as that doesn't appear to be used much.

Long term, I want to make all gpio controllers reference a gpio
controller schema and put the hog stuff there. Then we have the node
names defined in 1 place.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
Which one of the following are you suggesting?

"^(.+-hog(-[0-9]+)?)$"
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
This. The second part of pattern.

I'll send a patch for dtschema to drop the prefix version.</pre>
    </blockquote>
    <p>Thanks. Also thanks for the other patch. It helped a lot.</p>
    <p>Regards,</p>
    <p>Ninad<br>
    </p>
    <blockquote type="cite"
cite="mid:oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb">
      <pre wrap="" class="moz-quote-pre">

Best regards,
Krzysztof


</pre>
    </blockquote>
  </body>
</html>

--------------5PD0oWgh2UwHJR8M6w04d9SI--



--===============5817303601524415873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5817303601524415873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5817303601524415873==--


