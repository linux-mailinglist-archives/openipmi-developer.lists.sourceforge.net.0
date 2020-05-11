Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3211CE73D
	for <lists+openipmi-developer@lfdr.de>; Mon, 11 May 2020 23:16:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYFmO-0003EB-Mn; Mon, 11 May 2020 21:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jYFmN-0003E4-FG
 for openipmi-developer@lists.sourceforge.net; Mon, 11 May 2020 21:16:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zg5ZblEckjudGGv+zWhto912R3+7vDaQvjiBh9E4FHs=; b=dAuPXvoCt5W7eytadeyIha0dhi
 d9x7HoPvQkqBKcfVhfy5q77DCaVRPbW7byJuzHU4SRhMSbdVXVJEBI+xesghWItDR7Fqvw9ot1ilY
 P+DYHI0aFdQMezn5K4FyA71WHBeIGXPLPDWn++pcYFKM4l49XyTWarBIABOLlF754B2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zg5ZblEckjudGGv+zWhto912R3+7vDaQvjiBh9E4FHs=; b=bBe7C7Hd9VlMW27Z1sFEppvKGj
 nLOQ96VMWRXyePsjVd7p1F0A1Tgludo4liX5rCG94GC5qnCIQTZoKbVaXzUl6fwOhS0nMp5NtJT6Z
 y8Jl2s3Clu7SFKlgPMZPVDaCLJKkyzlPNtbSSEX6B9jKvjP3I4eP8VzKoXFjEWv44jXQ=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYFmL-009n45-JU
 for openipmi-developer@lists.sourceforge.net; Mon, 11 May 2020 21:16:03 +0000
Received: by mail-oi1-f193.google.com with SMTP id x7so15501282oic.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 11 May 2020 14:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zg5ZblEckjudGGv+zWhto912R3+7vDaQvjiBh9E4FHs=;
 b=tuc0oDVXKpK7pCIHRdJ2n3vv7SOm40QoWic1vJ82iySxUHKrypq4LN2S6z/S1v8z4T
 bPzxzMp5rovlPnrt3mmZ2ZRvaNqmRoGAoRG20YGcwtL/goJjmPunmccRyrBlxj1tfKYR
 KKsB6WDpf4l8f8wxpRxR2/hC9gqoDub+kl3UGgw2nkUDGMG0bszJQHduejTXY7MWo6fm
 BfqeTEIRbeUA+MJIYDq4X9MHJKAa6iimx9tkWWi+ZhWts53HwVwGUUgMdjF9UeBZ8lEH
 rYQ+Q6MCbkFDA8PFUttMK0ockl9h87Skp2emTck4CAFKyOKOFP+hZDFefmtdBHiH121r
 91EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=zg5ZblEckjudGGv+zWhto912R3+7vDaQvjiBh9E4FHs=;
 b=jchL8xpPTEuO6bsCoyd+MdGGkLZKKCSDffuuDWC44UOG6GwCcp40QHjJ/4fk0Dcfv/
 Vh8fYl94lCpKhNivOuQqUmKupC+ErJr2pHTbZRswbNpJpPy5P/LCAqyUZLmRmXmYiv0+
 wkNT5kXPo34dhtHwxQVTjzeJw6rgiGoIX1e5Kf/QNSFji6iVpPw+jSBC49K1lCFaawfN
 1mB/uINnx2nKHdB+hlDMr7+VmjbH1J3TOnUqyQWtYKzIoOZgPl5U/PySf3fcLyGIuhLZ
 /CLWOiiOPx2/DEoNdO+mgfqNF1ZsS47frj1c6AYJl5Q2FrTAHytRRKoHgrzbMG/77Z/k
 7IHw==
X-Gm-Message-State: AGi0PuYCH1sna36iM/KJs11PPlHiYNhKtZvsBqylouv5xeZPtexwj25y
 cfke9u38fJ1ERsFlYr3a1IHxebA=
X-Google-Smtp-Source: APiQypKYBJvuG9L8WGNCQr3ZJw9HFBjRjAU/+OSdLKYLp59lL/P0R4lHM0IQPEv8lG2qOYIlaVIfOw==
X-Received: by 2002:aca:d955:: with SMTP id q82mr13859431oig.76.1589231755851; 
 Mon, 11 May 2020 14:15:55 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id n9sm2937884otl.76.2020.05.11.14.15.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:15:54 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id CA5B3180042;
 Mon, 11 May 2020 21:15:53 +0000 (UTC)
Date: Mon, 11 May 2020 16:15:52 -0500
From: Corey Minyard <minyard@acm.org>
To: Stuart Hayes <stuart.w.hayes@gmail.com>
Message-ID: <20200511211552.GO9902@minyard.net>
References: <20200311192409.59923-1-stuart.w.hayes@gmail.com>
 <CAL5oW00pVoLPMJZymaVKsa=yi=TQ+Py3RX=WKnS3t+WNGZiPww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL5oW00pVoLPMJZymaVKsa=yi=TQ+Py3RX=WKnS3t+WNGZiPww@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jYFmL-009n45-JU
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: Load acpi_ipmi when ACPI
 IPMI interface added
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 11, 2020 at 01:54:19PM -0500, Stuart Hayes wrote:
> On Wed, Mar 11, 2020 at 2:24 PM Stuart Hayes <stuart.w.hayes@gmail.com>
> wrote:
> 
> > Try to load acpi_ipmi when an ACPI IPMI interface is added, so that the
> > ACPI IPMI OpRegion is accessible.
> >
> > Signed-off-by: Stuart Hayes <stuart.w.hayes@gmail.com>
> > ---
> >  drivers/char/ipmi/ipmi_si_platform.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/char/ipmi/ipmi_si_platform.c
> > b/drivers/char/ipmi/ipmi_si_platform.c
> > index c78127ccbc0d..2fdfebf0ebc8 100644
> > --- a/drivers/char/ipmi/ipmi_si_platform.c
> > +++ b/drivers/char/ipmi/ipmi_si_platform.c
> > @@ -393,6 +393,8 @@ static int acpi_ipmi_probe(struct platform_device
> > *pdev)
> >         dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
> >                  res, io.regsize, io.regspacing, io.irq);
> >
> > +       request_module("acpi_ipmi");
> > +
> >         return ipmi_si_add_smi(&io);
> >
> >  err_free:
> > --
> > 2.18.1
> >
> >
> Ping?  No rush, I just didn't want it to fall through the cracks and be
> forgotten.  Thanks!

I'm not sure why I missed this, but it's queued now.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
