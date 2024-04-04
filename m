Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C2B898C61
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Apr 2024 18:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rsQ9H-000217-T7;
	Thu, 04 Apr 2024 16:41:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rsQ9G-000211-Qs
 for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Apr 2024 16:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=koBbAALBJX5u2i+CgjXOjC27/k7ODf/jfcl7opMOdoY=; b=GLLVRWTsRgJcdX0HiLPotO2XkE
 q9s9NrOMSuJmMcGAnqRIJVIA0/N5bPoa16lqp84/rLyrSyaY0DlBu5Ymj6gorR7IRjh5po6A3aldt
 rX0D2deT6mbP9YmxQBhEdxkl0L8QP3FoZgcqCY85M/OjgRg0tS7m54dhZgydR3oTjDS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=koBbAALBJX5u2i+CgjXOjC27/k7ODf/jfcl7opMOdoY=; b=Lff0swuvNAzgW3JNbWDDslti1n
 rV6rejsZc2Y/I7U0klqhtD3jazz8LZaC5ghFdpqzUmkV9WeFKiODDinG4ARDBrla98661V49zi30i
 M1bEyfTYhXn909JWWcjTTsxK4ixUmRIB+4Ppwj+1gS1vl/HyraIsprdI6TUQnClpz5JQ=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rsQ9C-0008TK-TV for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Apr 2024 16:41:11 +0000
Received: by mail-oi1-f170.google.com with SMTP id
 5614622812f47-3c5d9383118so480598b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Apr 2024 09:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712248856; x=1712853656; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=koBbAALBJX5u2i+CgjXOjC27/k7ODf/jfcl7opMOdoY=;
 b=nadTPWwGi3yDXauaeD2RG9tlx0Jut2+GG7cOlgGzIuyzAZyBzcOqW5FjUTWh+CZJxv
 6W9+8bRQAfZt6+aXanQHCt3Mt7swYzyEbC5bxJkimrBAKkgKOepn7g76i8q7MFoGK1UY
 wgH+EhGkJzUcswPKnwT2EgFWPL5ZgjTX60xWiXeFnSeUHSPjhV+VNE8ZlDc4D4GiORyJ
 XY1Ui68/jc3hAVPAhAgNszW1xenCBYZJD3lZ2niPszMi0r7/Xv18VBBcOfJgsC98sEmv
 jfrkeU0XmppLQ2gkVO2DXUsx4ppCB14J5CUFsKSTy9wDdCbG2Wp6TBRk8DvmP/e7dy/D
 kiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712248856; x=1712853656;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=koBbAALBJX5u2i+CgjXOjC27/k7ODf/jfcl7opMOdoY=;
 b=dBBWItLgC6vKmjNwQzR08qr1pCaVKCbLgPDeb6WbebBbywrQwr8Puo8ohEpPrXBZwO
 Hi3U/VMk8Hf98eJ50FzFRdXz/tsTmp7X9jneSaLKv0jjCGJk2ZpOTvCi5qxgCSTOTJzi
 7F3fQKCc32o6+MIAOi0wUx1NHVP/1NfoE6mAALTTNdFrj5l2DDviDy9JV4Wa8BQqsv+h
 PlOSA/9DEJx5NEI+Z9RAB6KE15G/hTk0ja6tCAOcLg53abvAtECOenl2WIJTgzLzBtBo
 I8G4eG0//vaw5N4Qg9+hcvemS6tLGIMz/LClESwzLtY+lO5p2IeFWF+VXFZz6JxWE9xc
 wlWA==
X-Gm-Message-State: AOJu0YwHUlF+Wn9dDZKDUhEI29OqUMXSp5M4/4DBN6OnnpLdnwdccG3z
 mUZy4X+Y48az+sJcC/FIVt1IF4Jm/oIrRNKIDY+gjKtMdzGeHGQ=
X-Google-Smtp-Source: AGHT+IHNbm7PY/uTRxRqaZrPED6Iw7sCNpc5qZuy5kKASXKiP1rrjZAAeYSkvdsiodNsGs/1gQLQ9g==
X-Received: by 2002:a05:6808:1314:b0:3c3:8337:8032 with SMTP id
 y20-20020a056808131400b003c383378032mr3336441oiv.38.1712248856394; 
 Thu, 04 Apr 2024 09:40:56 -0700 (PDT)
Received: from serve.minyard.net ([47.184.176.113])
 by smtp.gmail.com with ESMTPSA id
 eu8-20020a056808288800b003c4f4873bf7sm979629oib.29.2024.04.04.09.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 09:40:55 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:c4d9:1498:3232:e39e])
 by serve.minyard.net (Postfix) with ESMTPSA id 3DB1918004E;
 Thu,  4 Apr 2024 16:40:55 +0000 (UTC)
Date: Thu, 4 Apr 2024 11:40:54 -0500
From: Corey Minyard <minyard@acm.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <Zg7YFs/foTMen5UO@mail.minyard.net>
References: <20240404104506.3352637-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404104506.3352637-1-schnelle@linux.ibm.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 04, 2024 at 12:45:05PM +0200, Niklas Schnelle
 wrote: > Hi Corey, > > This is a follow up in my ongoing effort of making
 inb()/outb() and > similar I/O port accessors compile-time optional. [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1rsQ9C-0008TK-TV
Subject: Re: [Openipmi-developer] [PATCH 0/1] char: ipmi: Handle HAS_IOPORT
 dependencies
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
Cc: Arnd Bergmann <arnd@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Heiko Carstens <hca@linux.ibm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 04, 2024 at 12:45:05PM +0200, Niklas Schnelle wrote:
> Hi Corey,
> 
> This is a follow up in my ongoing effort of making inb()/outb() and
> similar I/O port accessors compile-time optional. Previously I sent this
> as a treewide series titled "treewide: Remove I/O port accessors for
> HAS_IOPORT=n" with the latest being its 5th version[0]. With a significant
> subset of patches merged I've changed over to per-subsystem series. These
> series are stand alone and should be merged via the relevant tree such
> that with all subsystems complete we can follow this up with the final
> patch that will make the I/O port accessors compile-time optional.
> 
> The current state of the full series with changes to the remaining
> subsystems and the aforementioned final patch can be found for your
> convenience on my git.kernel.org tree in the has_ioport_v6 branch[1] with
> signed tags. As for compile-time vs runtime see Linus' reply to my first
> attempt[2].

Sorry, my bad, I've been out a lot recently and dealing with a bunch of
issues and I missed this.

It's in my tree now and it looks good.

-corey

> 
> Thanks,
> Niklas
> 
> [0] https://lore.kernel.org/all/20230522105049.1467313-1-schnelle@linux.ibm.com/
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/niks/linux.git/log/?h=has_ioport_v6
> [2] https://lore.kernel.org/lkml/CAHk-=wg80je=K7madF4e7WrRNp37e3qh6y10Svhdc7O8SZ_-8g@mail.gmail.com/
> 
> Niklas Schnelle (1):
>   char: ipmi: handle HAS_IOPORT dependencies
> 
>  drivers/char/ipmi/Makefile       | 11 ++++-------
>  drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
>  drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
>  3 files changed, 9 insertions(+), 8 deletions(-)
> 
> -- 
> 2.40.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
