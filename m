Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFC358C43E
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 09:41:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKxNs-0000Jb-DX; Mon, 08 Aug 2022 07:41:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oKxNq-0000JJ-B7
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FjsHMZLmb/GlaNd8HwMmgPgxm5PKMOsuOi0WmrXGSlA=; b=RPv+xi7FOjXt8zS7gwG13VYoSL
 hqLI0RN+69cEbf8MSZPkjxWZRffs/RgNGO6uDNGYIO3gjBcdumnAUykImWtczg/s6wuU+k/JfCbU9
 uccnge/R4GbQ/Pp/GWoswG7nFKGmkr4V7Bm94LusGc86OCH8A9GDtKwdHrsbUDURxuN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FjsHMZLmb/GlaNd8HwMmgPgxm5PKMOsuOi0WmrXGSlA=; b=UY/LrtI4qUEj7GymWnGz5CRNbM
 k2yObDK1C49OZvrLtQJ7mB4k5180llcyYYnnmO4e6aS8ODZZQ62Don1Add1GvihWkbcOcB8Mb2+v8
 R5kVU9OLc7+rQWIdS0Cp6cbSxSpWxF9fO5pJ3yK2E12WjYkRuoVG7+8qSvdm9hC+Jdvk=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKxNl-007Ufa-EQ
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:41:05 +0000
Received: by mail-lf1-f53.google.com with SMTP id o2so4126885lfb.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 00:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=FjsHMZLmb/GlaNd8HwMmgPgxm5PKMOsuOi0WmrXGSlA=;
 b=JqTFHcQRg/bGHymFtU2WjDYJSsnpJgc/Lp7I7n/hQQeWcePrxqiIQR5cNxhPg2h1ut
 htB15WfjEEwuKWc7sdDDXmbzTmofeYlFPANeBKqdk1VHR9uCXwElMoM0JklCoaI3qWMN
 gQhsmb9JzoLTr87eW3W3c6OVDvF9zO3haq79hyuHy/VE9xQ8Y6yVf9y42YItsUMDAqQ9
 166ZC3NW5xtzZ3OFRejKhc26XmPizgB+upAILwR/A0sP4+vySjIucPwLU2tVdCjE4tLu
 DvpMnJl3Rc2MaeO665FBi39ofY2m5oUeJHsqE795Bb0l+ezONdj9U0TuWpJkC8vVUpO3
 nj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=FjsHMZLmb/GlaNd8HwMmgPgxm5PKMOsuOi0WmrXGSlA=;
 b=Nw7vtaAn/tLN41E5PEdWtNeoVs5CnhFaxk/Fn0ZDZC249fRL+Uq03mlLjb3OlH/o7/
 ALqEfe2YK8R+r0WYWc4iB/wSbik7XjKXWF8HEnADsty6DK4t4MpswdESw6FBJpNhQLeb
 /ChmdWhQuNMQA4cI6XFXPcOOzK33skPBP1Q4j2XXDk7pdYXCXM+TUUpFeT3kIAXPT2ug
 ERlLc74cOq3tSn0IK0l9oEyMBa/MCXS122yaB/xUZdPFVVhIpmkWZU1aw0W91zObQ9Hb
 EDgPUN93gV9OPylVzxsZyGC8xbTiriZGiiUyQV71yshn/KgHCGFuvRx01s4t1jjuMY+q
 dz+w==
X-Gm-Message-State: ACgBeo1Ti7oa9F/Wkf1/bH55xVbHOYIedQOWLya7hWIYLau4I+3xG0k3
 5g/CpWQNDrbEP79WPouWl/m0ZAHwmxLjEbEMtBA=
X-Google-Smtp-Source: AA6agR40Oh1NkhpUPn/DplmuJHV4cYNWsZv3q3H5l9lDrB6jd+rIc9i/qlub2Q8awNxbIRVZPkwwKYyjZAZB/NCm7Rw=
X-Received: by 2002:ac2:5f77:0:b0:48b:3886:5d55 with SMTP id
 c23-20020ac25f77000000b0048b38865d55mr5402059lfc.668.1659944454775; Mon, 08
 Aug 2022 00:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
 <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
 <83bbcb33-1f6e-47cc-54bc-e0a5444c3609@linaro.org>
In-Reply-To: <83bbcb33-1f6e-47cc-54bc-e0a5444c3609@linaro.org>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Mon, 8 Aug 2022 10:40:43 +0300
Message-ID: <CAP6Zq1ggN_ep7nVLVc3d7D9Jnu2aaBTKmZnvO38-+m7gSvpMDw@mail.gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Krzysztof, Thanks for your reply. On Mon, 8 Aug 2022 at
 09:26, Krzysztof Kozlowski wrote: > > On 07/08/2022 09:51, Tomer Maimon wrote:
 > > Hi Krzysztof, > > > > Thanks for your review. > > > > On Fri, 5 Aug 2022
 at 09:36, Krzysztof [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
X-Headers-End: 1oKxNl-007Ufa-EQ
Subject: Re: [Openipmi-developer] [PATCH v2] dt-binding: ipmi: add fallback
 to npcm845 compatible
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, minyard@acm.org,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Krzysztof,

Thanks for your reply.


On Mon, 8 Aug 2022 at 09:26, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 07/08/2022 09:51, Tomer Maimon wrote:
> > Hi Krzysztof,
> >
> > Thanks for your review.
> >
> > On Fri, 5 Aug 2022 at 09:36, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 04/08/2022 20:18, Tomer Maimon wrote:
> >>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> >>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> >>>
> >>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> >>
> >> Your previous commit adding that compatible was simply wrong and not
> >> matching the driver and it is not the first time. I think all Nuvoton
> >> patches need much more careful review :(
> > Will do and sorry about all the mess...
> >>
> >> You forgot the fixes tag:
> >>
> >> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> > Will add the tag next version.
>
> You received a bit different review from Corey, so to be clear:
> 1. Your approach is correct, assuming the devices are really compatible.
> 2. Add a fixes tag and send a v3, to get my ack.
Will do.
>
> Best regards,
> Krzysztof

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
