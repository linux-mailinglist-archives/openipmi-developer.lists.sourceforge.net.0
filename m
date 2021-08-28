Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16B3FA22F
	for <lists+openipmi-developer@lfdr.de>; Sat, 28 Aug 2021 02:27:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mJmBS-0007Zm-8J; Sat, 28 Aug 2021 00:26:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mJmBQ-0007ZZ-U8
 for openipmi-developer@lists.sourceforge.net; Sat, 28 Aug 2021 00:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GmUBODhQzt7NDLbAJCx86u/YC1rHKAg1a1dtnbCmIys=; b=ZTlMkFirdN2LHHG0q9OsHT0STe
 EFOSpLYwN93SSsGoEfxI4N6cmvTQaMGYQHrAqmdv/17yDhB2OIyeKtMiRXYSa9cHFVcL3DUOBXYK4
 RcAUMNQHNS4L5S1gWoVXPmChvtiga57KLQgdZgeNtJOUSkhK+YhxJNH6swx36p45Mpz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GmUBODhQzt7NDLbAJCx86u/YC1rHKAg1a1dtnbCmIys=; b=GRdJrXoEL4EUyevgWpTV1RDW/R
 3a7/IvUTCFEy4/q2+tapZTaotdV8LPgY/C7BCHvwyaEnupASeGgOFwphG43Q+3pxsUiQHA5CvdosD
 7dmp/uzmlOhWprElLQ2uRLYINLQYUB9ETZOGzopsYAaOQGvbtsI1DYX5gbMq44MBlyaA=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mJmBP-004HNo-6R
 for openipmi-developer@lists.sourceforge.net; Sat, 28 Aug 2021 00:26:52 +0000
Received: by mail-oi1-f182.google.com with SMTP id o185so11763244oih.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 27 Aug 2021 17:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=GmUBODhQzt7NDLbAJCx86u/YC1rHKAg1a1dtnbCmIys=;
 b=fSps0m5KN09TK46WwkER8lf13tPG3zjjmx3l2z5wLFEqrmwkFgbuCCWHJER5jdY24b
 8bPES+PNFHx4pddp6b5KXX8fjQsS8GLvmj1bElEQZYqPQsidHuBoT6iZ5ogHx3+NqjPh
 uh8WykWrPyKC0Yo0kC1cpONVLcN1zJmalg0+2jMRVqmM1sfRmVsU+BJFhSyKp0Cjwnq8
 H3X+41LVw47mLwPnK2ZnKBYvV/GGyGTtK1W5EOGGV8Pqkruf1orlyXjRmgwnkm4/j3b8
 EoAAeggwkbM1VDnYfLj3mOL1LazXBmJOsBvvXk1MBdQ7ocOweiNTfTYfI2Bncwg3zbga
 /0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=GmUBODhQzt7NDLbAJCx86u/YC1rHKAg1a1dtnbCmIys=;
 b=no1cP0LtngBBCfUpmn87w9WE77UEGCni9CGBXalSfJYVippH5qckCKXuR2oP4v9Cxv
 KB0rhrxmSA4MRM8YA5c8TzHKPnwPq+eHuIZdkjCZpA9tPFrDLqkx3lyhQCm2g5v1QP+J
 A66/mYpPOACOjPiD6ngPcVjBJPEb5H4MyFqtgsTOtYfGcZGq/tuHZ63hDbn4yolt5395
 8wggjEpauCytv0UlVfFv4r14aNB4FxATL4cuBr0Z5SIg0k9j+DuQUZFy/jl/FYhQ3i0z
 VRvHoEx2zF8CVNFQVC9OrAW8KbsGnF/TDJWKV/mXXVSFUNvV2F4bJ7Jryob8/zTpASvi
 2xNA==
X-Gm-Message-State: AOAM533GuVLyjT5R9RnSXT2A+WOMA2auw1PoOuCFWniQ55VVRFHfHYOa
 VS1X624nP1yYiJLJL4hedYlIJW5DYQ==
X-Google-Smtp-Source: ABdhPJzccQdDkZFi1GzivraQuOZ5eDOqlzbM4z47pqA+RRAYNT1A/n0apW62eLFQloAzWLeHdDGtQQ==
X-Received: by 2002:aca:f145:: with SMTP id p66mr16234553oih.30.1630110405029; 
 Fri, 27 Aug 2021 17:26:45 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v126sm1714968oig.2.2021.08.27.17.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Aug 2021 17:26:44 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f00b:e1dc:4fda:23cf])
 by serve.minyard.net (Postfix) with ESMTPSA id BA6DF18000C;
 Sat, 28 Aug 2021 00:26:42 +0000 (UTC)
Date: Fri, 27 Aug 2021 19:26:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Pavel Cahyna <pcahyna@redhat.com>
Message-ID: <20210828002641.GD545073@minyard.net>
References: <20210123014322.GE1157510@minyard.net>
 <YSaKxX9tgS2IxCWH@redhat.com> <20210826013113.GA545073@minyard.net>
 <YSf4+iaT66qJCx2n@redhat.com> <20210826220527.GB545073@minyard.net>
 <YSgjVQT153uBkcx8@redhat.com> <20210827001824.GC545073@minyard.net>
 <YSliRSPTK95Wby3V@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSliRSPTK95Wby3V@redhat.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Aug 28, 2021 at 12:08:05AM +0200, Pavel Cahyna wrote:
 > On Thu, Aug 26, 2021 at 07:18:24PM -0500, Corey Minyard wrote: > > On Fri,
 Aug 27, 2021 at 01:27:17AM +0200, Pavel Cahyna wrote: > > > O [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mJmBP-004HNo-6R
Subject: Re: [Openipmi-developer] OpenIPMI 2.0.31 released
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

On Sat, Aug 28, 2021 at 12:08:05AM +0200, Pavel Cahyna wrote:
> On Thu, Aug 26, 2021 at 07:18:24PM -0500, Corey Minyard wrote:
> > On Fri, Aug 27, 2021 at 01:27:17AM +0200, Pavel Cahyna wrote:
> > > On Thu, Aug 26, 2021 at 05:05:27PM -0500, Corey Minyard wrote:
> > > > On Thu, Aug 26, 2021 at 10:26:34PM +0200, Pavel Cahyna wrote:
> > > > > Hello Corey,
> > > > > 
> > > > > On Wed, Aug 25, 2021 at 08:31:13PM -0500, Corey Minyard wrote:
> > > > > > On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahyna wrote:
> > > > > > > at a quick glance at header file diffs, it seems to me that the Windows
> > > > > > > DLL changes are introducing library API changes even for non-Windows
> > > > > > > builds. Specifically, commit:
> > > > > > > 
> > > > > > > 26e0921e77b6db359e7b018e8d439fcd1222d891 seems to affect the API of libIPMIlanserv.so.0.0.1
> > > > > > > cb416caa52dd73e53ada88ccda4aa496154519e8 seems to affect the API of libOpenIPMIcmdlang.so.0.0.5
> > > > > > > 
> > > > > > > Is that correct? If so, it seems that those libraries should have their
> > > > > > > major version numbers bumped.
> > > > > > 
> > > > > > Yeah, I suppose.  lanserv is not that critical for library
> > > > > > compatibility, and I seriously doubt anyone is using cmdlang.  So I
> > > > > > didn't work about it.
> > > > > > 
> > > > > > If you like I can update these and do a new release.
> > > > > 
> > > > > Thank you for the quick reply. Updating the major version is certainly a
> > > > > valid approach, but I would actually prefer to preserve compatibility.
> > > > > This way maintainers of distribution packages would not need to worry
> > > > > whether those libraries are important enough or not to introduce a
> > > > > compatibility package (which would be the correct approach, but quite an
> > > > > inconvenience). Actually, preserving compatibility does not seem that
> > > > > difficult. It seems to be enough to declare those symbols as weak
> > > > > (conditionally - not on Windows) and call them only if the new function
> > > > > pointers are NULL. Attached is a patch which does just that (for
> > > > > lanserv). Let me know what you think and I can do similar approach for
> > > > > cmdlang.
> > > > 
> > > > This will work fine, I think.  A few things I would like to change...
> 
> After some more investigation, I think that this will not work fine,
> actually. sys_data_t size seems to be part of the library ABI (it is
> allocated by the user, not by the library) and it has changed, so the
> new version is still ABI incompatible (my proposed change restores API
> compatibility though). (That is, libIPMIlanserv.so.0.0.1 -
> libOpenIPMIcmdlang.so.0.0.5 seems to be an easier case.)

Yeah.  Really, nobody is using the cmdlang library besides internal
users, and nobody using lanserv is going to care.  Just updating the
versions should be enough.

> 
> > > > Can you not modify dllvisibility.h and add all the include file stuff to
> > > > a separate include file?  It doesn't have anything to do with dll
> > > > visibility, so it really doesn't belong there.  And it make it easier to
> > > > yank out later.  Plus you can comment why the code is there.
> > > > 
> > > > Can you deprecate the weak symbols?  That way people will know they
> > > > shouldn't use them any more.
> > > 
> > > I don't think this is feasible, as the only code that uses the symbols
> > > is actually the library itself, so the deprecation warning will be
> > > printed only when compiling the library, not when compiling the user
> > > code. Or do you have some tip on how to do that?
> > 
> > There were prototypes for all these functions, you would need to re-add
> > the prototypes and then deprecate them.
> > 
> 
> I tried that, but that does not seem to work, because it causes the
> compiler to emit a warning when the functions are called. But the user
> code is not calling the functions, it defines them. It is the library who
> uses the functions. Am I missing something?

Oh, duh, yeah.  That's probably why it wasn't done on posix_vlog().

-corey

> 
> > > The posix_vlog symbol
> > > also does not seem to have been visibly deprecatred before being
> > > removed.
> > 
> > Yeah, that wasn't a good idea.  It's better if people are alerted.
> 
> Probably, but my point was rather that you would not have been able to
> make the declaration emit a warning when the deprecated interface gets
> used, even if you had wanted to, due to what I wrote above - user code
> does not actually use the fnction, it is a callback, so it defines the
> function and the library uses it.
> 
> P.
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
