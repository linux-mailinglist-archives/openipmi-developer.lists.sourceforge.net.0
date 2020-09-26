Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B889279AF8
	for <lists+openipmi-developer@lfdr.de>; Sat, 26 Sep 2020 18:33:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kMD8c-0003Kd-37; Sat, 26 Sep 2020 16:33:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kMD8b-0003KX-Mi
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 16:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=; b=NojSmhOcJhOu9zUNKbrpE0nYJL
 VGCKQ82pGnd+AUwTu++iQ0g4Sut2oMUmLCkywTZ8GDPOSonyqGIV0OYg594jjnpXEG58LTWgpvb6+
 cJnc3522+Ha267IFWo5BwX1FbpSFmh4JCIZl+hMhNwfWXpJru8ZAN3sSgtiDE/Tk+Xig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=; b=j8dZXCgQsxW3uLoIkj9voZ4IJB
 CgV1wTnrh2CPmt2xdd9nQ24RhU9NE3r4PLK4Ksgm96wvHMyTlpWpvf0dHJdne57e9wEZAyKaWyEoy
 jomRijOtm5ajhcrozQOU+SdqezwrFKyUM6PtSME59hi6mK7TOM+GoVq6/bOy+rTJ/uXM=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kMD8X-009HYo-1h
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 16:33:29 +0000
Received: by mail-pj1-f67.google.com with SMTP id b17so1114710pji.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 26 Sep 2020 09:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=;
 b=j18SszrIGHglF5HogqSQsLrk58lP8fECmVsnU5yfOkqc1W0HCJU1XuoZWoSIGhCw8O
 5BStnOqQow7SWPPTqSlIcqGVqAw/vVxjHtQ/Q1W5D+EbZaryvm/j2R/qcMgcPnAAXJ+P
 plaUHOPH8H18NjpTtFiQzfPWrswFQIWoggbK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mvGz7fsSzQyG47W1/0kt8/LOxSWmeEYp8+sMo1z9HUE=;
 b=RA/kgXRih1WCDkyvLqQTxqMiitngNf1vq+lPGDf4hOXbLbR1pIizRslQVYJb0l+yd/
 mKK9l2FHr7bDnFcoBY2Hju/oG2TfMu5SY4dLuYP47wxJaUQ6HjD60XEtlsX2A+xluWWX
 RIau467VTrhGfzzDBU5RbpfKdiPiUw1Mn1bm4rEqwwhuGuWbdWFeJv4F421+KrfBMNso
 EnvBTNKiB9PY54v02dcM3ZuTjrCJdPy6DsGe0gKAk6iCba8+d5XPPmfm4zlYVfJ/kgDI
 yNR6/HA583SCLzAxkvGsdOPccs+JimLQRVYcl6wm7cb27LOGT+4I2VlwiOIlncVbvpo8
 nu3g==
X-Gm-Message-State: AOAM532kktnKg30xHLC0O7NESOqdvq0ScOknTAfcY5r5CKCEtAS+bWvu
 5TsvxazPe28Hgyhs9lGualB6cQ==
X-Google-Smtp-Source: ABdhPJz07FYhFy6jlg7aMFgFGis4mK43u8VsIHtsiKwV5vvMHcarj8PIcUsFLtBpAAi0bNvkL0ZzQA==
X-Received: by 2002:a17:90a:4b42:: with SMTP id
 o2mr2367400pjl.205.1601137999302; 
 Sat, 26 Sep 2020 09:33:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w14sm5767645pfu.87.2020.09.26.09.33.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 09:33:18 -0700 (PDT)
Date: Sat, 26 Sep 2020 09:33:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <202009260930.9252966D@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
 <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kMD8X-009HYo-1h
Subject: Re: [Openipmi-developer] [PATCH 00/11] Introduce Simple atomic and
 non-atomic counters
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net,
 surenb@google.com, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
 lenb@kernel.org, tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 25, 2020 at 06:13:37PM -0600, Shuah Khan wrote:
> On 9/25/20 5:52 PM, Kees Cook wrote:
> > On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > > -- Addressed Kees's comments:
> > >     1. Non-atomic counters renamed to counter_simple32 and counter_simple64
> > >        to clearly indicate size.
> > >     2. Added warning for counter_simple* usage and it should be used only
> > >        when there is no need for atomicity.
> > >     3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
> > >     4. Renamed counter_atomic_long to counter_atomic64 and it now uses
> > >        atomic64_t ops and indicates size.
> > >     5. Test updated for the API renames.
> > >     6. Added helper functions for test results printing
> > >     7. Verified that the test module compiles in kunit env. and test
> > >        module can be loaded to run the test.
> > 
> > Thanks for all of this!
> > 
> > >     8. Updated Documentation to reflect the intent to make the API
> > >        restricted so it can never be used to guard object lifetimes
> > >        and state management. I left _return ops for now, inc_return
> > >        is necessary for now as per the discussion we had on this topic.
> > 
> > I still *really* do not want dec_return() to exist. That is asking for
> > trouble. I'd prefer inc_return() not exist either, but I can live with
> > it. ;)
> > 
> 
> Thanks. I am equally concerned about adding anything that can be used to
> guard object lifetimes. So I will make sure this set won't expand and
> plan to remove dec_return() if we don't find any usages.

I would like it much stronger than "if". dec_return() needs to be just
dec() and read(). It will not be less efficient (since they're both
inlines), but it _will_ create a case where the atomicity cannot be used
for ref counting. My point is that anything that _requires_ dec_return()
(or, frankly, inc_return()) is _not_ "just" a statistical counter. It
may not be a refcounter, but it relies on the inc/dec atomicity for some
reason beyond counting in once place and reporting it in another.

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
