package net.htmlparser;

/*
 * Copyright (C) 2015 Martin Wolf
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of  MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import jolie.runtime.JavaService;
import jolie.runtime.Value;
import jolie.runtime.ValueVector;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class HTMLParser extends JavaService {

    private Value elementToValue(Element element) {
        Value result = Value.create();
        result.getNewChild("name").setValue(element.nodeName());

        ValueVector children = result.getChildren("children");
        for (Element child : element.children()) {
            children.add(elementToValue(child));
        }
        return result;
    }

    public Value parse(Value document) {
        Document doc = Jsoup.parse(document.strValue());

        Value headValue = elementToValue(doc.head());
        Value bodyValue = elementToValue(doc.body());

        Value result = Value.create();
        result.getChildren("head").add(headValue);
        result.getChildren("body").add(bodyValue);
        return result;
    }


}
