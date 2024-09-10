Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91688973696
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Sep 2024 13:59:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1snzX6-00062s-Bz;
	Tue, 10 Sep 2024 11:59:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1snzX4-00062m-SW
 for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Sep 2024 11:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=; b=WeLi9nW1blPpvxWxj9wJzl56N5
 6dg/3j4VYCnn9ZiUvym5b++swvUx2oyySUt+3NG/KkDGw7PhlbEzUrUYqoibC6bWiRgAvjmsQGksZ
 7ystsOqPThV9fzCfgpEJf0gADHea2Ed4ws0NXJeylTc73JNTljheQa/8LfTuyISwotgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=; b=P3r4BP96IF9JQxSjX8BhzgoPau
 nVsSfDnxP+koYR9UUBHR/kKXIjEXrtF2/UPy60XztLQ+SMIIvFRznWs7DXO3ijuTOxWUxzWAjc9w6
 xXKwmHvBJttWPwczFMnvHTm/OD6NpO8YpPYqzANvyExwQEW93QB49hI7Trz2MdZZ+xJM=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1snzX3-0002b9-GH for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Sep 2024 11:59:42 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id E77671FCDB;
 Tue, 10 Sep 2024 11:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725969570; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=;
 b=SBZuaV+TWT+QD2XJvxfYD5Pz+u6kTUWTkwYmphD8RbTsRLHlWI9lkjn6P4EspxdGhtb6Vj
 se4JX4ISHKB9K7acQlldfYFH1YVBEDEZKmEtwEuGY2aG50R4EslgbIrbtlTVu2e35vFutb
 kANffGtT3Z+GMRGSY0RXzSj/oUVCCPU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725969570;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=;
 b=vgMsKVm0Vp6B1FR8FGA7InSDJ4yGFTBaAku5pfBMsQPU69ukklSAjLyXK2cSFUWfMFsoYA
 t6p/WhWUdS+JOXCw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=FQ1LfOjF;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=lQZ672wM
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725969568; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=;
 b=FQ1LfOjF4/hKzqDnsiVWyKpgpDw90sxVtF2o+LwI2ou+9q7r/ma7+9Ajg6/Fu6y0l3d/QU
 4CsIIDnQorpkwNUssy+npFKHkhYzVU6zCs4k8kMBMUVQzEyfWJdKN5+H4DLpsohx8C+hED
 aQT3wzxzM/uYCbqIGHWzj8YGPs4heqc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725969568;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sNdePKyjGq3+O+HZZ9zNfnNaBcll3lXBgM1kKQ2oDSQ=;
 b=lQZ672wM5XimcchHmciPfRDLiulDDJDYtWLowZR6RuBMBCMCsAU3esMcgP0NE4F58tPh/v
 DBD87ucBtCMBvxAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CA7BA132CB;
 Tue, 10 Sep 2024 11:59:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id dVoQMKA04GZBfgAAD6G6ig
 (envelope-from <iivanov@suse.de>); Tue, 10 Sep 2024 11:59:28 +0000
Date: Tue, 10 Sep 2024 15:05:10 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Corey Minyard <corey@minyard.net>
Message-ID: <20240910120510.62h76nzr7lu7qdvn@localhost.localdomain>
References: <20240816065458.117986-1-iivanov@suse.de>
 <ZsU9SRlQgzQn8bDs@mail.minyard.net>
 <20240910102531.grjtn2rdmagcgphb@localhost.localdomain>
 <CAB9gMfqnpu9hpS8U=umGFV6k+KSoG+Luw80KL10_Qdqo3mLU8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB9gMfqnpu9hpS8U=umGFV6k+KSoG+Luw80KL10_Qdqo3mLU8g@mail.gmail.com>
X-Rspamd-Queue-Id: E77671FCDB
X-Spam-Score: -6.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 DWL_DNSWL_MED(-2.00)[suse.de:dkim];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; ARC_NA(0.00)[]; MIME_TRACE(0.00)[0:+];
 TO_DN_SOME(0.00)[]; MISSING_XM_UA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RCPT_COUNT_THREE(0.00)[3]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,minyard.net:email,suse.de:email,suse.de:dkim];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 09-10 06:30, Corey Minyard wrote: > > > > > > If an IPMI
 SSIF device is probed and there is something there, but > > > probably not
 an actual BMC, the code would just issue a lot of errors > > > be [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1snzX3-0002b9-GH
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Improve detecting
 during probing
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 09-10 06:30, Corey Minyard wrote:
> > >
> > > If an IPMI SSIF device is probed and there is something there, but
> > > probably not an actual BMC, the code would just issue a lot of errors
> > > before it failed.  We kind of need these errors to help with certain
> > > issues, and some of the failure reports are non-fatal.
> > >
> > > However, a get device id command should alway work.  If that fails,
> > > nothing else is going to work and it's a pretty good indication that
> > > there's no valid BMC there.  So issue and check that command and bail
> > > if it fails.
> > >
> > > Reported-by: Ivan T. Ivanov <iivanov@suse.de>
> > > Signed-off-by: Corey Minyard <corey@minyard.net>
> > > ---
> > >  drivers/char/ipmi/ipmi_ssif.c | 24 +++++++++++++++++++++++-
> > >  1 file changed, 23 insertions(+), 1 deletion(-)
> >
> > Do you plan to merge this fix?
> 
> Yes, it's queued for the next release window.  I should have responded
> with that.
> 

Thank you! No worries.

Regards,
Ivan



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
