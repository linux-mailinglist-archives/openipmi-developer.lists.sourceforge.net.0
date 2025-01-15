Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F97EA12DF7
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 22:54:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYBLB-00044G-HD;
	Wed, 15 Jan 2025 21:54:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tYBLA-00044A-FS
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 21:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:Cc:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TzpXaZVhH3eqHenHViKCjdEQGUU6qnZx4yq8XoragwU=; b=TiimmfHHQMNz8e9Pw4PCqL4iAp
 PZdtQvsSDXLkO0iiIvIwoUpY6QwlMFRlis0UpjN3ATAmVFXi//reAH6CrYylwYVz1rp2J2hPBWyNj
 7b4GD43e6OJd7G5ZMUrD62d1VH2ZhtWVqO2+0OyqZ8G+6wnAIADxJvTPDXANUOAsF/Co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TzpXaZVhH3eqHenHViKCjdEQGUU6qnZx4yq8XoragwU=; b=QhcP/7AxsCcGVIjsMDMZRpEyGG
 bXk7jtV6gS4tlX2geQ789R432ZHTze1+ohkdCs5n+kqg2D423/AgxpRXuyWntaAZQXDkodaC0RCI2
 EBBxQoiLpMn54fuftZi5ZaixZtgPzj0xntZJYerQg2ui/MPu/MEfB+HclMNZO/vt8uDA=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYBLA-0001QF-CM for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 21:54:21 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50FHX5Tc000836;
 Wed, 15 Jan 2025 21:53:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pp1; bh=TzpXaZVhH3eqHenHViKCjdEQGUU6qn
 Zx4yq8XoragwU=; b=Nxj0p9Y9/7i2/hCO+avoY3MFnfxlL+Ij/EPPF5CL1/EQuq
 GubT5SyeWPLREdWs27s8YdXAB/GsdqPyRSb+Gt91ni81T4MTZJAcK+dX1qxg0v4Y
 Zho/T1hRTBwVxgvT+jEZegUefIAu/3z2fCueB4TB4OOx2UTUMVJTmkA2sedKSU99
 SsIIGnAmHSnL76OAqUI5k2+RaVs0bk7txfQ4ixoYnM0oU0j7rpdpi9AF9CfZEmRB
 wze0+eg42BLjjaIjARaJOBF5Q84BC5h1lQlYhZARHeMdC1qiieN+KUxvaz9ODT8/
 VquVDKmxkSmH5aFyYkUWEnlH6u3OPEw5DRaMpsiA==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4465gbvs43-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2025 21:53:45 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50FLriCx027772;
 Wed, 15 Jan 2025 21:53:44 GMT
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4465gbvs41-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2025 21:53:44 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50FJCi0b016498;
 Wed, 15 Jan 2025 21:53:43 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 4445p1t8n7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2025 21:53:43 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50FLrgFs21299906
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2025 21:53:43 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B9E9458054;
 Wed, 15 Jan 2025 21:53:42 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 27D645804E;
 Wed, 15 Jan 2025 21:53:40 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 15 Jan 2025 21:53:39 +0000 (GMT)
Message-ID: <a164ab0e-1cdf-427e-bfb7-f5614be5b0fa@linux.ibm.com>
Date: Wed, 15 Jan 2025 15:53:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
 <20250115142457.GA3859772-robh@kernel.org>
Content-Language: en-US
In-Reply-To: <20250115142457.GA3859772-robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: N0qq9DarB3vpRhUB6kGjwhL57QFm0RUJ
X-Proofpoint-ORIG-GUID: 59NEuzXQaaEoT921uCHvZsT9sSdxJDdd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-15_09,2025-01-15_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501150154
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Rob, Thanks for the review. On 1/15/25 08:24,
 Rob Herring
 wrote: > On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski wrote:
 >> On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote: >>> Allow
 parsing GPIO con [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tYBLA-0001QF-CM
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8007956031915920365=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============8007956031915920365==
Content-Type: multipart/alternative;
 boundary="------------M63O9CT6nsxzWiO8YePzjvSE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M63O9CT6nsxzWiO8YePzjvSE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Rob,

Thanks for the review.

On 1/15/25 08:24, Rob Herring wrote:
> On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski wrote:
>> On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote:
>>> Allow parsing GPIO controller children nodes with GPIO hogs.
>>>
>>> Signed-off-by: Ninad Palsule<ninad@linux.ibm.com>
>>> ---
>>>   .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
>>> index b9afd07a9d24..b9bc4fe4d5a6 100644
>>> --- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
>>> +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
>>> @@ -46,6 +46,12 @@ properties:
>>>       minimum: 12
>>>       maximum: 232
>>>   
>>> +patternProperties:
>>> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
>> Choose one - suffix or prefix. More popular is suffix.
> I was about to say that, but this matches what gpio-hog.yaml defines.
> Why we did both, I don't remember. We could probably eliminate
> 'hog-[0-9]+' as that doesn't appear to be used much.
>
> Long term, I want to make all gpio controllers reference a gpio
> controller schema and put the hog stuff there. Then we have the node
> names defined in 1 place.

Which one of the following are you suggesting?

"^(.+-hog(-[0-9]+)?)$"
"^(pin-hog(-[0-9]+)?)$" any other? Regards, Ninad

>
> Rob
>
--------------M63O9CT6nsxzWiO8YePzjvSE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello Rob,</p>
    <p>Thanks for the review.<br>
    </p>
    <div class="moz-cite-prefix">On 1/15/25 08:24, Rob Herring wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20250115142457.GA3859772-robh@kernel.org">
      <pre wrap="" class="moz-quote-pre">On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Allow parsing GPIO controller children nodes with GPIO hogs.

Signed-off-by: Ninad Palsule <a class="moz-txt-link-rfc2396E" href="mailto:ninad@linux.ibm.com">&lt;ninad@linux.ibm.com&gt;</a>
---
 .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
index b9afd07a9d24..b9bc4fe4d5a6 100644
--- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
@@ -46,6 +46,12 @@ properties:
     minimum: 12
     maximum: 232
 
+patternProperties:
+  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
Choose one - suffix or prefix. More popular is suffix.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
I was about to say that, but this matches what gpio-hog.yaml defines. 
Why we did both, I don't remember. We could probably eliminate 
'hog-[0-9]+' as that doesn't appear to be used much.

Long term, I want to make all gpio controllers reference a gpio 
controller schema and put the hog stuff there. Then we have the node 
names defined in 1 place.</pre>
    </blockquote>
    <p>Which one of the following are you suggesting?</p>
    <pre wrap="" class="moz-quote-pre">"^(.+-hog(-[0-9]+)?)$"
"^(pin-hog<span style="white-space: pre-wrap">(-[0-9]+)?)$"
any other?
Regards,
Ninad
</span></pre>
    <blockquote type="cite"
      cite="mid:20250115142457.GA3859772-robh@kernel.org">
      <pre wrap="" class="moz-quote-pre">

Rob

</pre>
    </blockquote>
  </body>
</html>

--------------M63O9CT6nsxzWiO8YePzjvSE--



--===============8007956031915920365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8007956031915920365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8007956031915920365==--


