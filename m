Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6FC958B72
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Aug 2024 17:37:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgQvU-0006zG-DB;
	Tue, 20 Aug 2024 15:37:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1sgQvT-0006zA-59
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 15:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=; b=G6ckbM0fNyFdDFb477fC7PElRA
 Re24mSTwg9epTXjoxY22Rbwqxq24a1JK5mTn2vbQd4DdThHfmToFxLLGl/luc6GYSvux8XIZw1TLN
 uP+YER8RhFljsW5HzJB0Da3Fi5lKDbacqwPfywiZQ8lzKz6Q7bU+fTtsOPOxzXboRPVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=; b=cZmiNQ8j982nNskENF6u9NJKSc
 BsEz2shf2tuHHxaWnQojF89T+1Gb2iSRX6bnBs4ewaA0e7kIIpN1p1Bmx08hsN4l/qyPZkhcDGgMf
 KqvednYoSx2t3C4cWjElXB0vtmcLuMv5MH15gxAlkcfNIkIu3Qtsogt1Nqf+gjyquEFQ=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sgQvS-0005XK-9u for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 15:37:39 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id BA6E11F80E;
 Tue, 20 Aug 2024 15:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724168246; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=;
 b=oYa3PeBkqJEok6PaO1cgjzXLQ0IFq/Hy3rozwL1TPAe2hMUYoHFLB1SXFBe6qFFozfr4AB
 EfjyB5rLB2vbEo4cmzMH258TwupfKdegBTIj8lbxDhF3LUbMlIlSupf30o4SNzWhXYDQAe
 8jsMcPhPOHkCTpvzZrYzAkZqkyNdUPU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724168246;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=;
 b=O2wvUUMFZvIIhezXBhIYrWo+ac0JSRFiQXsSL4vZm8L4tqQF0fl5zk71LMnVESjQ7wvjIZ
 AGgKu7+Q/ZljwyDQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=oYa3PeBk;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=O2wvUUMF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724168246; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=;
 b=oYa3PeBkqJEok6PaO1cgjzXLQ0IFq/Hy3rozwL1TPAe2hMUYoHFLB1SXFBe6qFFozfr4AB
 EfjyB5rLB2vbEo4cmzMH258TwupfKdegBTIj8lbxDhF3LUbMlIlSupf30o4SNzWhXYDQAe
 8jsMcPhPOHkCTpvzZrYzAkZqkyNdUPU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724168246;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u8q+tVd0IVc3OuqYTQEo0xFd8mMVK1JV0i0DiNPGyVY=;
 b=O2wvUUMFZvIIhezXBhIYrWo+ac0JSRFiQXsSL4vZm8L4tqQF0fl5zk71LMnVESjQ7wvjIZ
 AGgKu7+Q/ZljwyDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A186C13770;
 Tue, 20 Aug 2024 15:37:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id zfw8JTa4xGZ8OAAAD6G6ig
 (envelope-from <iivanov@suse.de>); Tue, 20 Aug 2024 15:37:26 +0000
Date: Tue, 20 Aug 2024 18:42:20 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Corey Minyard <corey@minyard.net>
Message-ID: <20240820154220.qnbuqebretmz42wd@localhost.localdomain>
References: <20240816065458.117986-1-iivanov@suse.de>
 <Zr+Up+94gmPEHwcJ@mail.minyard.net>
 <84eb700ee647cc40e9e99b086a8648e3@suse.de>
 <20240820102005.4l2j73jpt7lmwloh@localhost.localdomain>
 <CAB9gMfqj2KJ8=dxhKvJewYB8cE04F2y6pqCtHbXnKVJCjTBygQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB9gMfqj2KJ8=dxhKvJewYB8cE04F2y6pqCtHbXnKVJCjTBygQ@mail.gmail.com>
X-Rspamd-Queue-Id: BA6E11F80E
X-Spam-Level: 
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 MISSING_XM_UA(0.00)[]; MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 TO_DN_SOME(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[4]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.de:dkim];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 08-20 10:31, Corey Minyard wrote: > > > > > > > > >
 > > 3) It appears the response to the GET_DEVICE_ID command, though a > >
 > > response is returned, is not valid. The right way to handle this wo [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [195.135.223.131 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgQvS-0005XK-9u
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Exit early when there
 is a SMBus error
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi,

On 08-20 10:31, Corey Minyard wrote:
> > >
> > > >
> > > > 3) It appears the response to the GET_DEVICE_ID command, though a
> > > > response is returned, is not valid.  The right way to handle this would
> > > > be to do more validation in the ssif_detect() function.  It doesn't do
> > > > any validation of the response data, and that's really what needs to be
> > > > done.
> > > >
> > >
> > > do_cmd() in ssif_detect() already do validation. Perhaps,
> > > ssif_probe() should just not return ENODEV in case of error.
> > >
> >
> > Oh, I wanted to say ssif_detect, not ssif_probe.
> 
> Yeah, that's probably the right solution.  I'll look at this a bit.
> But I see the problem.  Do you want to do a patch, or do you want me
> to?

If you want to do it, please go ahead. I don't mind.

Thanks,
Ivan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
