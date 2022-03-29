Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B711C4EB366
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 20:34:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZGfM-00009M-9I; Tue, 29 Mar 2022 18:34:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZGfL-00008l-1K
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xs0YVSxqXM6+RJUqS+VnwD5hs9dBgnS+FtAIycO3jfs=; b=kNHGLBLcSal0WW4Fflp8aDd16Z
 5WOma7L68nlHPNcQaXbzA+8+C+qb4z5vUDuBqvTZsGnuy3nXpvyGv9wwWZNfskVjypumm4LcmViYz
 yWGzFTOtdLojXeU51tJeTQPdmiWtfOP4xZT56rICtetoLKO9XhBlb/izHA3MxFR2Wx70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xs0YVSxqXM6+RJUqS+VnwD5hs9dBgnS+FtAIycO3jfs=; b=V
 pKpW8NUhVKnaMHGN5fnt9B94Ip8CF8y8vfYyGWTKvQCRUIP6aZs+Zozumu3OBXL8YTQQgVmFJ5ota
 YG6D28z7ENzU71o+OBZsXWQel30yq8T1rwTz5KwoRGpsBBkHTxB3XrEO/tirZ5rBauZQbSPhiw1ZR
 urjCgFJvbl1v4xi4=;
Received: from mail-qv1-f53.google.com ([209.85.219.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZGfE-0002YG-Sq
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:34:01 +0000
Received: by mail-qv1-f53.google.com with SMTP id k7so15073743qvc.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 11:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xs0YVSxqXM6+RJUqS+VnwD5hs9dBgnS+FtAIycO3jfs=;
 b=CJzjq0z6H8P6t3YSkp9PIG3aCvbROZXMvlDEPKMs2JZ+FiyjuRPZ8qcZcjZP/kHSYt
 0L7OqAnI9iUUXpuWviHCKsQDUgZom+UIZl3s5/iqenIxaohEql8Eh8rrDtQK7P1A9arw
 wsiiP5w7ku6kEWaYj32BQ2UIVEsd1w5FZdg5raCVebI83W6H7RLMHofJ7AfQPT7X4yiZ
 KUViLAfyDs5mvMGCYb8M7jX37idURsHcRyzWzkq/HR2ZFiECoLZqo1IBlcDBQjQZi8CN
 g41PuI1+EEMT7h0GneLhMj6XDH2TB3YHhQ3vQL8IsbBhxb5mRyyK+RVQIM9A5KwfbSwJ
 TSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=Xs0YVSxqXM6+RJUqS+VnwD5hs9dBgnS+FtAIycO3jfs=;
 b=LD19XkiX0IybrzA0F1j1oJk/rxZMyFEwxTuY6PX2WpnDbguUVi7bd+51mKaIHPE0Fx
 9169GvI5Dv9M3TmF6qqoTu7UouAtC33llL2BAa8wgWR/ATW8PmieF/YTpshkxWSNh68G
 be9ldPRphc0kYfTryAvKEyflzDZhd+QzQBKz0NiimJS+gnGakCmu7Gua9TSfGp2Jy4RZ
 S8hOB8EYUrF6jek++JHwKWkSXNyitF+wswP4XP8NfC3gVPJUTIOkHHQQDjAsckXwpEHI
 dEk4/IKqOFF/G5CYqG4QNW9iSmWFnnA169SZzPVWI7Pe8YVxExrTyRflHUOUAqZ68R9i
 Y7AA==
X-Gm-Message-State: AOAM530lgDPUMS/x78A4RYer0aO9GOXrns78I2mVj4XZyhLPNs02aJFq
 P18S/QmGrRCQ2sytD3R2ew==
X-Google-Smtp-Source: ABdhPJyz3IG/1GVxQbPMlMH0HAUijtzkB6hizGeGB4NUCeE1fgqDmHfgJsYQNzb3R7ciy/9soefmYw==
X-Received: by 2002:a05:6214:29c7:b0:441:3f11:9315 with SMTP id
 gh7-20020a05621429c700b004413f119315mr27834968qvb.87.1648578830934; 
 Tue, 29 Mar 2022 11:33:50 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 u22-20020a05622a199600b002eb841fcb6dsm5764649qtc.73.2022.03.29.11.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:33:49 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPA id BAB141800BB;
 Tue, 29 Mar 2022 18:33:47 +0000 (UTC)
From: minyard@acm.org
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Date: Tue, 29 Mar 2022 13:33:36 -0500
Message-Id: <20220329183340.471474-1-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I had actually already started working on a set of patches
 for this, but I've incorporated some of your work. There were problems with
 your patches: * The limits on messages were global, not per-user. This could
 cause unfairness in the interface. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.53 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nZGfE-0002YG-Sq
Subject: [Openipmi-developer] [PATCH 0/4] ipmi: add limits on users and
 messages
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

I had actually already started working on a set of patches for this, but
I've incorporated some of your work.

There were problems with your patches:

* The limits on messages were global, not per-user.  This could cause
  unfairness in the interface.

* The counts were on the BMC, not on the interface.  The interface is
  the right place to put them, as that's where the messages flow
  through, and it's easier to do.

* Going through all the messages to get the count is kind of inefficient
  to do on a per-send basis.  Keep a count instead.

* The ability to flush messages is a no-go.  The IPMI driver guarantees
  responses and internal kernel users (and external users) rely on that
  property.  A flush could break the watchdog or ACPI.  The messages
  will just have to time out.

This is my proposal for your review.

Thanks,

-corey




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
