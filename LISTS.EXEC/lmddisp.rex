/******************************* Rexx *********************************/
/* Exec to display a data set list using the ISPF LMDDISP service.    */
/**********************************************************************/
level    = "DAND.*.G%%%%V%%"         /* Dsname Level                  */
vol      = ""                        /* Volume                        */
view     = "SPACE"                   /* VOLUME|SPACE|ATTRIB|TOTALS    */

/* LMDINIT the associate the level/volume with a dslist-id.           */
Address ISPEXEC "LMDINIT LISTID(LISTIDV) LEVEL("level") VOLUME("vol")"

Address ISPEXEC "LMDDISP LISTID("listidv") VIEW("view")"

/* LMDFREE to free up the dslist-id association                       */
Address ISPEXEC "LMDFREE LISTID("listidv")"

Exit
/**********************************************************************/
/* Send questions, suggestions and/or bug reports to:                 */
/*                         Dan Dirkse                                 */
/*                   ztools.channel@gmail.com                         */
/**********************************************************************/
/*                                                                    */
/*             (C) Copyright The Z Tools Company, 2022                */
/*                                                                    */
/**********************************************************************/
/* This program is free software: you can redistribute it and/or      */
/* modify it under the terms of the GNU General Public License as     */
/* published by the Free Software Foundation, either version 3 of     */
/* the License, or (at your option) any later version.                */
/*                                                                    */
/* This program is distributed in the hope that it will be useful,    */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of     */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the       */
/* GNU General Public License for more details.                       */
/*                                                                    */
/* You should have received a copy of the GNU General Public License  */
/* along with this program. If not, see https://www.gnu.org/licenses/ */
/**********************************************************************/
