Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1DA64780
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Mar 2025 10:34:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tu6r2-0006vr-V9;
	Mon, 17 Mar 2025 09:33:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <breno.debian@gmail.com>) id 1tu6r0-0006vb-Tt
 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Mar 2025 09:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3fJo5zDfQ4kPxJxhSWnaEAAlNYVAeESKJdwbB4zuW30=; b=M3uVeqxiZ0l1mx3xLGEWUbZc0/
 LVzbQWHvNFbz2/JfZvNLgd7sShPApF21wmtW9/sLlQjf4W6aVxkhBpzuOQILJDAM5trUZjLvViZVp
 Ot5o/1PAfP3zxD7UbVBXum0DaCTuCxZDFKcpEXCfYTG0/PhCZ6Ln5v/B7kAeHkdEgzQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3fJo5zDfQ4kPxJxhSWnaEAAlNYVAeESKJdwbB4zuW30=; b=R8EZsyMVpx1YDa0Cg0UNdBBmQG
 N36M4NV+KzpcLKUxeQM05ryOc/h9wM6bgqJO/eaKvUk9TnY6+DdmaNZPxNtIUQn9346PfuGc4JpOF
 SjeNmk2OIyVK7HfBdE2Q5GCXUc7z+doCNbhjgLNQNYMI47WYX0nwEx2+ETUy1NThoDtM=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tu6qw-0006ua-28 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Mar 2025 09:33:51 +0000
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-abf3d64849dso674446866b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Mar 2025 02:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742204014; x=1742808814;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3fJo5zDfQ4kPxJxhSWnaEAAlNYVAeESKJdwbB4zuW30=;
 b=ZXc1rs75puScNrey+jPNDgyZJKH/tsg7IMAg5iCcrFXzbKaQXxi6+aBIeTojxVydJf
 b8plEwWxx2HmZI5k/Bkctf3/xa4VKa4tb4TQImV45R7qyQQrVLZw8rpmNf/xc3jpoPUc
 dSUJ2SJSp5rNqNGq7lofVIg8xAM1BY2wfeG+4GnHpRcAorBnjLX9+4tnmMsVELb1zp8g
 xoiHDbMKhMLYlJcNOKJvUsHhUuTXXJEJuG4cUYtnsKcqSUuTrGImMCa+XrJKtgsvOrSY
 +6eiE2RgurvTx+/85Tfkz0uKnBlWbSIYjAqW0ayWPVjfHXc3/1QSd1CCSl9tq5kb67Ht
 r0UA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSk13ZH8K8ktVyWoqmx1bFDwKdAcS6HxoIp/ULkJfQLr3a92WkYtiMzIJ6sA+purd96FZ6SDdA0Ajvdc+5NUQvtO0=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzROxPCB45Dh+x5bZX8T3yRuz/vZi9hFHFunO1lQFVWwdv0wL7/
 SY6dDGyatY6Pe9GlLg7Rrv59vNumJf94xItOxaMVtbnjYRA3DGRR
X-Gm-Gg: ASbGnct5psNbtioiMa7EpL4h6fNZclxGAg5y2THkWgrtAxKqkd9gge7RpUGu8PlLetz
 FraYBjJNpE/Eq/phDpCfVz0SbrN8HixXzADeroVjKeJTyyujzq/s+P7Tt6DlIBJl7k2JOnirYG8
 +O072uIp2h50poKkjSoD7pLrtTTzjTbC8vQxKO9kjFaaC6Xw48Jh1r8dI6CV/SNH6hpU862LwH8
 SPXrr3+ShWsT1AvrXZ2tbPfZzcVu+leK7iBy0SLs86rtev1vFATYOWQrwmGGLJ0xqLwxfcsaj8l
 s/frjQonMRkurfPFKBz5DVbiJGkG7jLbSM8=
X-Google-Smtp-Source: AGHT+IEZjdu1qY0Y6OW9fEkhQiS+SDaBPSurXGqMA9oKwTei2mB6At7OaEeooZeORXPojtqE9DT9AQ==
X-Received: by 2002:a17:906:1f52:b0:ac3:4491:5079 with SMTP id
 a640c23a62f3a-ac3449151demr778533566b.2.1742204014263; 
 Mon, 17 Mar 2025 02:33:34 -0700 (PDT)
Received: from gmail.com ([2a03:2880:30ff:6::])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5e8169bd543sm5753635a12.45.2025.03.17.02.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Mar 2025 02:33:33 -0700 (PDT)
Date: Mon, 17 Mar 2025 02:33:31 -0700
From: Breno Leitao <leitao@debian.org>
To: Rik van Riel <riel@surriel.com>
Message-ID: <20250317-horned-nano-degu-a6e5bc@leitao>
References: <20250312131932.44d901f7@fangorn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250312131932.44d901f7@fangorn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
 > On recent kernels this warning fires: > >
 drivers/char/ipmi/ipmi_msghandler.c:1238
 RCU-list traversed in non-reader section!! > > This l [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.42 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.42 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [breno.debian[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1tu6qw-0006ua-28
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix suspicious RCU usage
 warning
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 kernel-team@meta.com, linux-kernel@vger.kernel.org,
 "Paul E. McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
> On recent kernels this warning fires:
> 
> drivers/char/ipmi/ipmi_msghandler.c:1238 RCU-list traversed in non-reader section!!
> 
> This looks like a fairly simple lockdep trigger, where
> list_for_each_entry_rcu and list_for_each_entry_srcu are
> functionally identical, but the lockdep annotation in
> the former has an extra check.
> 
> That extra check is whether the RCU read lock is held,
> which is not true when the code uses srcu_read_lock.
> 
> Get rid of the warning by using the properly annotated
> list traversal macro.

Thanks for looking at this one.

There was a discussion about this issue a few years ago, with
a different approach that never landed upstream.

	https://lore.kernel.org/all/20201119123831.GH3710@minyard.net/#r


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
