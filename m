Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F713FA165
	for <lists+openipmi-developer@lfdr.de>; Sat, 28 Aug 2021 00:08:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mJk1R-0005dc-9r; Fri, 27 Aug 2021 22:08:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pcahyna@redhat.com>) id 1mJk1Q-0005dW-Bg
 for openipmi-developer@lists.sourceforge.net; Fri, 27 Aug 2021 22:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p1I2bq/jYqdMSSxCckfJTfcNiXcQqy9BVgQmWbUfvlY=; b=hAYn0x487/nbLUWtN9Sd+j6igT
 gTZE2HU855V81M+RC7x7X7Dv4tXkjq4Vu3hAvh2cLpagT2h2LrYJL4A2iExa5acVB2VZwqpleGk+t
 qjEwVdqOlAIQOwYc+/710PtNPi4EWq3jbPNzL1Fk80h2lRKl0B/iqnyKkntKOjlkBqUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p1I2bq/jYqdMSSxCckfJTfcNiXcQqy9BVgQmWbUfvlY=; b=V7P8XPkV5e4rifm5lVd9shJskR
 TNSm6thApCu1mFAVy3C+lq5b2jaHjpZTv0ztOO548IZYeIhalobC4l/DHPHk7S9f2TwcJt9knIHE3
 Qh9XpBt+juTtG5lrjqHU/WNHoRGVLA6UFFOUXAyivc48nHlmwzpFHs2FjQx/oNEwvqIw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJk1K-0000mi-RX
 for openipmi-developer@lists.sourceforge.net; Fri, 27 Aug 2021 22:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630102092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p1I2bq/jYqdMSSxCckfJTfcNiXcQqy9BVgQmWbUfvlY=;
 b=glJFNbatO6CcrHa3O3oKGZwSydPrEreSPejNlr/yfGCKImEvuub3kd+/2/1eFTiPk03T2L
 vR/EsVmTpDTMk5IZ4xens7ZJIINZHwYtK5M9AqPpXYPdTbvvKv8ix//ljY1nFQ2nc8JbSa
 LfML4kGAzCrAQL/Mhf0rNHZ0c5ORFuQ=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-KbehLHgjP3eOfAP7vzLeqw-1; Fri, 27 Aug 2021 18:08:11 -0400
X-MC-Unique: KbehLHgjP3eOfAP7vzLeqw-1
Received: by mail-wr1-f71.google.com with SMTP id
 b8-20020a5d5508000000b001574e8e9237so2265073wrv.16
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 27 Aug 2021 15:08:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p1I2bq/jYqdMSSxCckfJTfcNiXcQqy9BVgQmWbUfvlY=;
 b=RDkOPHg8JVhrJwnpLS9RuF+LkxlynmG2n+mU87nn5WM0CXunABi+VYnzbahfBiqNHH
 U6H2pHwJ4f9RLcKE2LopygmKUOQrzBmACXDH6ej8UzUt/30cTpGWxl+AyorWndD9BAb6
 gmiQHnkQlmE277TwXsNG/pjVdEMeTMbT3kLNFs/M+5iP1jt9A4rV4A2p8j6FP1jgtRZq
 Ch8cZ7nYtyxJDXxuGEHtS6f18D3Ix8nuVTgduU+Cs7UjX2y9blnkFI2D8pgHTgwHxnpX
 A+VOrpXbWphPJD2gYYA/DGVYKd87w4Payt1BoUPKS0RHMMKYBZ3SiztxJnntQAbsDp1L
 SIHg==
X-Gm-Message-State: AOAM531hBJVV8/CES3k4VjMyxFysWeXppqGfFaLtxOYAXEFlJ6aeO5ON
 zUWxsj74Nvyj99iWjwZcrAAtpBEJz4Y44OV6ONXETQ7NxuKxr+TK8Ag3AkR5m1XwTSzkaJFfzIv
 LfcPjxbJRLSKlSK+uoZ8wtlPggOUQVEEKvQW3wgQ=
X-Received: by 2002:a05:600c:2f08:: with SMTP id
 r8mr8660818wmn.86.1630102090006; 
 Fri, 27 Aug 2021 15:08:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyohkS3wZLvg870RXHU4v8FFMHjuUlF7LLCEsZGNX3PsR00wxNOPN0ru2wOSbf07PeZ/EWc4Q==
X-Received: by 2002:a05:600c:2f08:: with SMTP id
 r8mr8660802wmn.86.1630102089822; 
 Fri, 27 Aug 2021 15:08:09 -0700 (PDT)
Received: from redhat.com ([94.230.157.80])
 by smtp.gmail.com with ESMTPSA id a10sm11812289wmj.44.2021.08.27.15.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Aug 2021 15:08:09 -0700 (PDT)
Date: Sat, 28 Aug 2021 00:08:05 +0200
From: Pavel Cahyna  <pcahyna@redhat.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <YSliRSPTK95Wby3V@redhat.com>
References: <20210123014322.GE1157510@minyard.net>
 <YSaKxX9tgS2IxCWH@redhat.com> <20210826013113.GA545073@minyard.net>
 <YSf4+iaT66qJCx2n@redhat.com> <20210826220527.GB545073@minyard.net>
 <YSgjVQT153uBkcx8@redhat.com> <20210827001824.GC545073@minyard.net>
MIME-Version: 1.0
In-Reply-To: <20210827001824.GC545073@minyard.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pcahyna@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mJk1K-0000mi-RX
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 26, 2021 at 07:18:24PM -0500, Corey Minyard wrote:
> On Fri, Aug 27, 2021 at 01:27:17AM +0200, Pavel Cahyna wrote:
> > On Thu, Aug 26, 2021 at 05:05:27PM -0500, Corey Minyard wrote:
> > > On Thu, Aug 26, 2021 at 10:26:34PM +0200, Pavel Cahyna wrote:
> > > > Hello Corey,
> > > > 
> > > > On Wed, Aug 25, 2021 at 08:31:13PM -0500, Corey Minyard wrote:
> > > > > On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahyna wrote:
> > > > > > at a quick glance at header file diffs, it seems to me that the Windows
> > > > > > DLL changes are introducing library API changes even for non-Windows
> > > > > > builds. Specifically, commit:
> > > > > > 
> > > > > > 26e0921e77b6db359e7b018e8d439fcd1222d891 seems to affect the API of libIPMIlanserv.so.0.0.1
> > > > > > cb416caa52dd73e53ada88ccda4aa496154519e8 seems to affect the API of libOpenIPMIcmdlang.so.0.0.5
> > > > > > 
> > > > > > Is that correct? If so, it seems that those libraries should have their
> > > > > > major version numbers bumped.
> > > > > 
> > > > > Yeah, I suppose.  lanserv is not that critical for library
> > > > > compatibility, and I seriously doubt anyone is using cmdlang.  So I
> > > > > didn't work about it.
> > > > > 
> > > > > If you like I can update these and do a new release.
> > > > 
> > > > Thank you for the quick reply. Updating the major version is certainly a
> > > > valid approach, but I would actually prefer to preserve compatibility.
> > > > This way maintainers of distribution packages would not need to worry
> > > > whether those libraries are important enough or not to introduce a
> > > > compatibility package (which would be the correct approach, but quite an
> > > > inconvenience). Actually, preserving compatibility does not seem that
> > > > difficult. It seems to be enough to declare those symbols as weak
> > > > (conditionally - not on Windows) and call them only if the new function
> > > > pointers are NULL. Attached is a patch which does just that (for
> > > > lanserv). Let me know what you think and I can do similar approach for
> > > > cmdlang.
> > > 
> > > This will work fine, I think.  A few things I would like to change...

After some more investigation, I think that this will not work fine,
actually. sys_data_t size seems to be part of the library ABI (it is
allocated by the user, not by the library) and it has changed, so the
new version is still ABI incompatible (my proposed change restores API
compatibility though). (That is, libIPMIlanserv.so.0.0.1 -
libOpenIPMIcmdlang.so.0.0.5 seems to be an easier case.)

> > > Can you not modify dllvisibility.h and add all the include file stuff to
> > > a separate include file?  It doesn't have anything to do with dll
> > > visibility, so it really doesn't belong there.  And it make it easier to
> > > yank out later.  Plus you can comment why the code is there.
> > > 
> > > Can you deprecate the weak symbols?  That way people will know they
> > > shouldn't use them any more.
> > 
> > I don't think this is feasible, as the only code that uses the symbols
> > is actually the library itself, so the deprecation warning will be
> > printed only when compiling the library, not when compiling the user
> > code. Or do you have some tip on how to do that?
> 
> There were prototypes for all these functions, you would need to re-add
> the prototypes and then deprecate them.
> 

I tried that, but that does not seem to work, because it causes the
compiler to emit a warning when the functions are called. But the user
code is not calling the functions, it defines them. It is the library who
uses the functions. Am I missing something?

> > The posix_vlog symbol
> > also does not seem to have been visibly deprecatred before being
> > removed.
> 
> Yeah, that wasn't a good idea.  It's better if people are alerted.

Probably, but my point was rather that you would not have been able to
make the declaration emit a warning when the deprecated interface gets
used, even if you had wanted to, due to what I wrote above - user code
does not actually use the fnction, it is a callback, so it defines the
function and the library uses it.

P.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
